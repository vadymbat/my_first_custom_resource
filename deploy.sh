#!/bin/zsh

PROFILE=''
REGION=''

aws --profile ${PROFILE} --region ${REGION} cloudformation deploy \
    --template-file ./run_template.yaml --stack-name first-custom-resource \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM