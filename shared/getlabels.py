import sys,os

data='/afs/ir.stanford.edu/data/linguistic-data/mnt/mnt7/LDC93S7-T-Switchboard-Transcripts/swb1/tables/tables/caller.tab'

# each element contains (pid, age, sex, area, education)
recs = []

def getage(birth):
  now = 1992
  diff = now - birth

  if diff < 20:
    return 0
  if diff < 30:
    return 1
  elif diff < 40:
    return 2
  elif diff < 50:
    return 3
  elif diff < 60:
    return 4
  elif diff < 70:
    return 5
  else:
    # test
    print 'age is ' + str(diff)

  return -1

def getarea(area):
  if area == 'SOUTH MIDLAND':
    return 0
  elif area == 'WESTERN':
    return 1
  elif area == 'NORTH MIDLAND':
    return 2
  elif area == 'NORTHERN':
    return 3
  elif area == 'SOUTHERN':
    return 4
  elif area == 'NYC':
    return 5
  elif area == 'MIXED':
    return 6
  elif area == 'NEW ENGLAND':
    return 7
  elif area == 'UNK':
    return 8
  elif area == '':
    return 9
  else:
    # test
    print 'area is ' + area

  return -1

f = open(data, 'r')
for line in f:
  parts = line.split(',')
  pid = int(parts[0])

  gender = parts[3].strip(" 	\"")
  if gender == 'MALE':
    sex = 0
  else:
    assert gender == 'FEMALE'
    sex = 1

  age = getage(int(parts[4]))
  area = getarea(parts[5].strip(" 	\""))

  education = int(parts[6])
  if education == 9:
    education = 4

  assert age != -1
  assert area != -1
  assert education == 0 or education == 1 or education == 2 or education == 3 or education == 4

  recs.append((pid, age, sex, area, education))

f.close()

g = open('person.txt', 'w')
for (pid, age, sex, area, education) in recs:
  g.write(str(pid) + ' ' + str(age) + ' ' + str(sex) + ' ' + str(area) + ' ' + str(education) + ' \n')
g.close()
