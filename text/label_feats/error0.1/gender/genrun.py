import sys,os

regconst = [0.01, 0.1, 1, 10]

prop = sys.argv[1]
errorprob = sys.argv[2]

for s in range(8):
  for c in regconst:
    print 'echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" +  prop + str(s) + '-' + str(c) + '.txt'          
    print '/dfs/ilfs2/0/s3hu/swb/wer/train -s ' + str(s) + ' -c ' + str(c) + ' /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error' + errorprob + '/train_' + prop + '.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + '/' + prop + '.model'  
    print '/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error' + errorprob + '/train_' + prop + '.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" + prop + '.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" + prop + '.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + '/' + prop + str(s) + "-" + str(c) + ".txt"
    print 'echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" + prop + str(s) + '-' + str(c) + '.txt'
    print '/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error' + errorprob + '/validation_' + prop + '.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/"  + prop + '.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" + prop + '.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error' + errorprob + "/" + prop + str(s) + "-" + str(c) + ".txt"

