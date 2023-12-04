#!/bin/bash
INSTANCE_ID=$1

PUBLIC_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[0].Instances[0].PublicDnsName' --output text)

echo "Public DNS of the instance: http://$PUBLIC_DNS"
