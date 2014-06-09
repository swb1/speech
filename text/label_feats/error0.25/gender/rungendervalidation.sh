echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender0-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender1-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender2-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender3-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender4-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender5-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender6-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/train_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.25/validation_gender.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.25/gender7-10.txt
