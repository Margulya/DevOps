#!/bin/bash
INSTANCE_ID=$1
PUBLIC_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[0].Instances[0].PublicDnsName' --output text)

ssh -L 5566:127.0.0.1:2375 -i "DevOpsMargoKeys.pem" ubuntu@$PUBLIC_DNS
