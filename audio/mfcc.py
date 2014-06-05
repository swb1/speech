'''
  extract two speakers mfcc
'''

import sys,os
import ntpath

soxdir='bin/sox'

# return A's and B's clips
def getclips(mrkfile):
  a_clips = []
  b_clips = []
  mrk = open(mrkfile, 'r')
  a_start = 0 # time of starting point in A's clip
  b_start = 0 # time of starting point in B's clip
  a_end = 0
  b_end = 0

  prevspk = ''
  currspk = ''

  start=0
  dur=0

  for line in mrk:
    parts = line.split()
    if len(parts) < 4:
      continue
    if len(parts) == 5 and parts[1] == '&&':
      parts.pop(1)
    currspk = parts[0].strip('<>*@')
    if len(currspk) == 0 or (currspk != 'A' and currspk != 'B'):
      # e.g., beep sound doesn't have a speaker
      continue

    if '*' in parts[1] or '*' in parts[2]:
      # remove interleaved speech
      if len(prevspk) > 0:
	if prevspk == 'A':
	  a_clips.append((a_start, round(a_end - 0.01 - a_start,2)))
	else:
	  assert prevspk == 'B'
	  b_clips.append((b_start, round(b_end - 0.01 - b_start,2)))

      prevspk = ''
    else:
      start = float(parts[1].strip('&'))
      dur = float(parts[2].strip('&'))

      if currspk != prevspk:
	if currspk == 'A':
	  a_start = start
	  a_end = a_start + dur
	else:
	  assert currspk == 'B'
	  b_start = start
	  b_end = b_start + dur

	if len(prevspk) > 0:
	  if currspk == 'A':
	    if start < b_end:
	      prev_b_end = b_end
	      b_end = start
	      a_start = prev_b_end

	    if b_start < b_end - 0.01:
	      b_clips.append((b_start, round(b_end - 0.01 - b_start,2)))
	  else:
	    assert currspk == 'B'
	    if start < a_end:
	      prev_a_end = a_end
	      a_end = start
	      b_start = prev_a_end

	    if a_start < a_end - 0.01:
	      a_clips.append((a_start, round(a_end - 0.01 - a_start,2)))

	prevspk = currspk
      else:
	if currspk == 'A':
	  a_end = start + dur
	else:
	  assert currspk == 'B'
	  b_end = start + dur

  if currspk == 'A':
    a_end = start + dur
    a_clips.append((a_start, round(a_end - 0.01 - a_start,2)))
  elif currspk == 'B':
    b_end = start + dur
    b_clips.append((b_start, round(b_end - 0.01 - b_start,2)))

  return (a_clips, b_clips)

# generate sox commands to trim clips
def genouts(audfile, clips):
  global soxdir

  buf = ''
  for i, (start, dur) in enumerate(clips):
    name = ntpath.basename(audfile).split('.')[0]
    out = name + '-' + str(i) + '.wav'
    buf += out + ' '
    print soxdir + ' ' + audfile + ' ' + out + ' trim ' + str(start) + ' ' + str(dur)

  return buf

def genscp(name):
  f = open('logs/wav_' + name + '.scp', 'w')
  f.write(name + ' wavdir/' + name + '.wav\n')
  f.close()

def getwav(mrkfile, audfile):
  global soxdir

  (a_clips, b_clips) = getclips(mrkfile)
  name = ntpath.basename(audfile).split('.')[0]
  a_buf = genouts(audfile, a_clips)
  print soxdir + ' ' + a_buf + name + '-A1.wav'
  print soxdir + ' ' + name + '-A1.wav -s -b 16 ' + name + '-A2.wav '
  # using only 1 channel
  print soxdir + ' ' + name + '-A2.wav -c 1 ' + name + '-A.wav '
  print 'mv ' + name + '-A.wav wavdir'
  print 'rm *.wav\n'

  b_buf = genouts(audfile, b_clips)
  print soxdir + ' ' + b_buf + name + '-B1.wav'
  print soxdir + ' ' + name + '-B1.wav -s -b 16 ' + name + '-B2.wav '
  # using only 1 channel
  print soxdir + ' ' + name + '-B2.wav -c 1 ' + name + '-B.wav '
  print 'mv ' + name + '-B.wav wavdir'
  print 'rm *.wav\n'

  # generate scp files
  genscp(name + '-A')
  genscp(name + '-B')

  # extract mfcc features
  print 'bin/compute-mfcc-feats --verbose=2 --config=conf/mfcc.conf scp:logs/wav_' + name + '-A.scp ark:- | bin/copy-feats --compress=true ark:- ark,scp:mfcc/raw_mfcc_' + name + '-A.ark,mfcc/raw_mfcc_' + name + '-A.scp || echo ' + name +'-A >> l;'

  print 'bin/compute-mfcc-feats --verbose=2 --config=conf/mfcc.conf scp:logs/wav_' + name + '-B.scp ark:- | bin/copy-feats --compress=true ark:- ark,scp:mfcc/raw_mfcc_' + name + '-B.ark,mfcc/raw_mfcc_' + name + '-B.scp || echo ' + name +'-B >> l;'

  print 'rm wavdir/' + name + '-A.wav'
  print 'rm wavdir/' + name + '-B.wav'

if not os.path.exists('wavdir'):
  os.makedirs('wavdir')

if not os.path.exists('logs'):
  os.makedirs('logs')

if not os.path.exists('mfcc'):
  os.makedirs('mfcc')

f = open('../shared/sph2mrk.txt', 'r')
for i,line in enumerate(f):
  print '\necho ' + str(i)
  parts = line.split()
  audfile = parts[0]
  mrkfile = parts[1]
  getwav(mrkfile, audfile)
