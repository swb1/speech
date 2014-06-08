import sys,os

props = ['age']
comps = [50, 100, 150, 200, 250, 300, 350]
cs = [0.005, 0.05, 0.5, 5, 50]
gammas = [0.001, 0.01, 0.1, 1, 10]

for prop in props:
  for comp in comps:
    for c in cs:
      for gamma in gammas:
        # filename: in format of comp-c-gamma
	print 'python pca.py ' + prop + ' ' + str(comp)  + ' ' + str(c)  + ' ' + str(gamma) + ' > results/' + str(comp) + '-' + str(c) + '-' + str(gamma)
