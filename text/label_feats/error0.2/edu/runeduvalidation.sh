echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu0-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu1-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu2-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu3-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu4-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu5-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu6-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/train_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.2/validation_edu.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.2/edu7-10.txt
