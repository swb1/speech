echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age0-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age1-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age2-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age3-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age4-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age5-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age6-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_age.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/age7-10.txt
