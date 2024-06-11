#!/bin/bash
BUCKET="nome do s3"
REGION="regiao do s3"

read -p "Informe a key: " ACCESS_KEY
read -p "Informe a secret: " SECRET_KEY

cat <<EOF>> credentials-velero
[default]
aws_access_key_id=$ACCESS_KEY
aws_secret_access_key=$SECRET_KEY
EOF

velero install \
    --provider aws \
    --plugins velero/velero-plugin-for-aws:v1.7.1 \
    --bucket $BUCKET \
    --backup-location-config region=$REGION \
    --snapshot-location-config region=$REGION \
    --secret-file ./credentials-velero 

if [ $? == 0 ]; then
  rm -rf ./credentials-velero
fi
#verifique versao mais recente