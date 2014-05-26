import sys, os

ages = {}
sexs = {}
accs = {}
edus = {}

f = open('person.txt', 'r')
for line in f:
  # age, sex, accent, education
  parts = line.split()
  age = int(parts[1])
  sex = int(parts[2])
  accent = int(parts[3])
  edu = int(parts[4])

  if age not in ages:
    ages[age] = 0
  ages[age] += 1

  if sex not in sexs:
    sexs[sex] = 0
  sexs[sex] += 1

  if accent not in accs:
    accs[accent] = 0
  accs[accent] += 1

  if edu not in edus:
    edus[edu] = 0
  edus[edu] += 1

print 'age'
for k in sorted(ages.keys()):
  print str(k) + ' - ' + str(ages[k])
print 

print 'sex'
for k in sorted(sexs.keys()):
  print str(k) + ' - ' + str(sexs[k])
print 

print 'accent'
for k in sorted(accs.keys()):
  print str(k) + ' - ' + str(accs[k])
print 

print 'education'
for k in sorted(edus.keys()):
  print str(k) + ' - ' + str(edus[k])
