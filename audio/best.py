'''
  it prints the best file name and corresponding accuracy

  usage:
    python best.py age/accent/edu/gender
'''

import sys,os

rdir='opsm_scripts'
best_file = ''
best_acc = -1
best_ratio = ''

for f in os.listdir(rdir):
  if f.endswith('.txt') and f.startswith(sys.argv[1].strip()):
    g = open(rdir + '/' + f,'r')
    lines = g.readlines()
    if len(lines) > 1 or len(lines) == 0:
      continue
    line = lines[0]
    if 'Accuracy' in line:
      parts = line.split()
      acc = float(parts[2].strip('%'))
      if acc > best_acc:
        best_acc = acc
	best_file = f
	best_ratio = parts[3]

print(best_file)
print(str(best_acc) + '% ' + best_ratio)
