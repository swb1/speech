echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 0 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent0-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 1 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent1-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 2 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent2-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 3 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent3-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 4 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent4-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 5 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent5-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 6 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent6-10.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.01 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.01.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.01.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.01.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 0.1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-0.1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 1 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-1.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-1.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-1.txt
echo "training:" > /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/train -s 7 -c 10 /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/train_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-10.txt
echo "validation:" >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-10.txt
/dfs/ilfs2/0/s3hu/swb/wer/predict /dfs/ilfs2/0/s3hu/swb/wer/label_feats/error0.1/validation_accent.lsvm /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.model /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent.txt >> /dfs/ilfs2/0/s3hu/swb/wer/opsm_scripts/error0.1/accent7-10.txt
