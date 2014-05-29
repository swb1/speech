import sys,os

prop = 'gender'
train = open('../label_feats/train_' + prop + '.lsvm','r')
test = open('../label_feats/test_' + prop + '.lsvm','r')

f = open(prop + '.train','w')

for line in train:
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

g = open(prop + '.test','w')
for line in test:
  parts = line.split()
  new_line = parts[0] + ','
  parts.pop(0)
  for i,p in enumerate(parts):
    val = p.split(':')[1].strip()
    if i < len(parts) - 1:
      new_line += val + ','
    else:
      new_line += val + '\n'
  g.write(new_line)

f.close()
g.close()
