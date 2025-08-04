#!/bin/bash

#aws resource tracker


echo "Instances on AWS" 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId[]' > resource.txt


echo "S3 Buckets on AWS"
aws s3 ls >> resource.txt


echo "IAM users on AWS"
aws iam list-users >> resource.txt


echo "Lamba Functions on AWS"
aws lambda list-functions >> resouce.txt
