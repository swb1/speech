import sys,os

labeldir = '../../../audio/label_feats'

props = ['age','gender','accent','edu']
sets = ['train','valid','test']

for s in sets:
  for p in props:
    f = open(labeldir + '/' + s + '_' + p + '.lsvm','r')
    g = open(s + '_' + p + '.label','w')
    for line in f:
      parts = line.split(' ', 1)
      label = parts[0]
      g.write(label.strip() + '\n')

    f.close()
    g.close()
