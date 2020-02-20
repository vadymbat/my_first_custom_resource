#!/bin/zsh

PROFILE=''
S3_BUCKET=''
S3_PREFIX=''
PACKAGE_PATH='./package'

mkdir ${PACKAGE_PATH}
pip install -r requirements.txt -t ${PACKAGE_PATH}
cp *.py ${PACKAGE_PATH}
aws --profile ${PROFILE} cloudformation package \
    --template-file custom_resource.yaml \
    --s3-bucket ${S3_BUCKET} \
    --s3-prefix ${S3_PREFIX} \
    --output-template-file run_template.yaml
rm -r ${PACKAGE_PATH}
