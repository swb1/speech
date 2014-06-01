import sys,os

prop = 'age'

bestfile = ''
besttrainacc = -1
besttestacc = -1

for f in os.listdir(prop):
  g = open(prop + '/' + f, 'r')
  lines = g.readlines()
#  assert(len(lines) == 5)
  if len(lines) == 5:
    train_acc = float(lines[2].strip())
    test_acc = float(lines[4].strip())

    if test_acc > besttestacc:
      besttestacc = test_acc
      besttrainacc = train_acc
      bestfile = f

print bestfile
print 'best train acc: ' + str(besttrainacc)
print 'best test acc: ' + str(besttestacc)
