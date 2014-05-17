import sys,os

# audio dir
adir='/afs/ir/data/linguistic-data/Switchboard/Audio-swbd1ph2'
# trans dir
tdir='/afs/ir/data/linguistic-data/Switchboard/Switchboard-Transcripts/swb1/trans'

# list of (audio file path, trans file path)
outs = []

atot = 0
for cd in os.listdir(adir):
  for afile in os.listdir(adir + '/' + cd + '/swb1'):
    atot += 1
    aname = afile.split('.')[0]
    aname = 'sw' + aname[3:]
    apath = adir + '/' + cd + '/swb1/' + afile

    succ = False
    # try phase 1
    for disc in os.listdir(tdir + '/phase1'):
      mpath = tdir + '/phase1/' + disc + '/' + aname + '.mrk'
      if os.path.isfile(mpath):
        outs.append((apath, mpath))
	succ = True
	break

    # try phase 2
    for disc in os.listdir(tdir + '/phase2'):
      mpath = tdir + '/phase2/' + disc + '/' + aname + '.mrk'
      if os.path.isfile(mpath):
        outs.append((apath, mpath))
	succ = True
	break
 
    if not succ:
      print afile

print atot

g = open('sph2mrk.txt','w')
for (aud, trans) in outs:
  g.write(aud + ' ' + trans + '\n')
g.close()
