import sys,os

conv_ids = set()
data='/afs/ir.stanford.edu/data/linguistic-data/Switchboard/Audio-swbd1ph2'
tab='/afs/ir.stanford.edu/data/linguistic-data/mnt/mnt7/LDC93S7-T-Switchboard-Transcripts/swb1/tables/tables'

# read all phone conversation ids
for cd in os.listdir(data):
  dir1 = data + '/' + cd + '/swb1'
  for f in os.listdir(dir1):
    parts = f.split('.')
    conv_id = parts[0][3:]
    conv_ids.add(conv_id)


conv_file=tab+'/conv.tab'
conv2per = {}
g = open(conv_file, 'r')
for line in g:
  parts = line.split(',')
  conv_id = parts[0].strip()
  if conv_id in conv_ids:
    A = parts[2].strip()
    B = parts[3].strip()
    if conv_id not in conv2per:
      conv2per[conv_id] = [A,B]

g.close()

'''
conv_file=tab+'/call_con.tab'
conv2per = {}
g = open(conv_file, 'r')
for line in g:
  parts = line.split(',')
  conv_id = parts[0].strip()
  if conv_id in conv_ids:
    per_id = parts[1].strip()
    if conv_id not in conv2per:
      conv2per[conv_id] = []

    conv2per[conv_id].append(per_id)
g.close()
'''

h = open('conv2per.txt', 'w')
h.write('each line in this file contains three numbers: conversation id, person A\'s id, person B\'s id\n')
for k in sorted(conv2per):
  h.write(str(k) + ' ' + str(conv2per[k][0]) + ' ' + str(conv2per[k][1]) + '\n')
h.close()
