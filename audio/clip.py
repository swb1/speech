'''
  extract two speakers' voices using the mrk file
'''

import sys,os
import ntpath

#mrkfile='sw3035.mrk'
#audfile='sw03035.sph'

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
  buf = ''
  for i, (start, dur) in enumerate(clips):
    name = ntpath.basename(audfile).split('.')[0]
    out = name + '-' + str(i) + '.wav'
    buf += out + ' '
    print 'sox-14.4.1/src/sox ' + audfile + ' ' + out + ' trim ' + str(start) + ' ' + str(dur)

  return buf

def getwav(mrkfile, audfile):
  (a_clips, b_clips) = getclips(mrkfile)
  name = ntpath.basename(audfile).split('.')[0]
  a_buf = genouts(audfile, a_clips)
  print 'sox-14.4.1/src/sox ' + a_buf + name + '-A1.wav'
  print 'sox-14.4.1/src/sox ' + name + '-A1.wav -s -b 16 ' + name + '-A.wav '
  print 'mv ' + name + '-A.wav wavdir'
  print 'rm *.wav\n'

  b_buf = genouts(audfile, b_clips)
  print 'sox-14.4.1/src/sox ' + b_buf + name + '-B1.wav'
  print 'sox-14.4.1/src/sox ' + name + '-B1.wav -s -b 16 ' + name + '-B.wav '
  print 'mv ' + name + '-B.wav wavdir'
  print 'rm *.wav\n'

  print 'openSMILE/$execname -C config/$configfile -I wavdir/' + name + '-A.wav -O feats/' + name + '-A.lsvm -noconsoleoutput'
  print 'openSMILE/$execname -C config/$configfile -I wavdir/' + name + '-B.wav -O feats/' + name + '-B.lsvm -noconsoleoutput'

  print 'rm wavdir/' + name + '-A.wav'
  print 'rm wavdir/' + name + '-B.wav'

f = open('sph2mrk.txt', 'r')
for i,line in enumerate(f):
  print '\necho ' + str(i)
  parts = line.split()
  audfile = parts[0]
  mrkfile = parts[1]
  getwav(mrkfile, audfile)
