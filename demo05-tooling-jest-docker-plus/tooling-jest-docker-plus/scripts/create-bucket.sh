BUCKET_NAME=treinamento-aws-mabdias

aws \
  s3 mb s3://$BUCKET_NAME

aws \
  s3 ls
