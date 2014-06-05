import sys,os

prop = sys.argv[1]
train = open('../label_feats/train_' + prop + '.lsvm','r')
valid = open('../label_feats/valid_' + prop + '.lsvm','r')
test = open('../label_feats/test_' + prop + '.lsvm','r')

def dowork(filename, fhandle):
  f = open(filename,'w')
  for line in fhandle:
    parts = line.split()
    new_line = parts[0] + ','
    parts.pop(0)
    for i,p in enumerate(parts):
      val = p.split(':')[1].strip()
      if i < len(parts) - 1:
	new_line += val + ','
      else:
	new_line += val + '\n'
    f.write(new_line)
  f.close()

dowork(prop + '.train', train)
dowork(prop + '.valid', valid)
dowork(prop + '.test', test)
