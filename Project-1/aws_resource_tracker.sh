#!/bin/bash



############################
# Author:Shivangi
# Date: 0f Feb
# Version: v1
#
# This script report the aws resource usage


# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM 

set -x

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > output.txt

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> output.txt

# list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> output.txt

# list iam users
echo "Print list of iam users"
aws iam list-users >> output.txt

