#!/bin/bash
aws ec2 run-instances --image-id ami-01bc990364452ab3e --count 1 --instance-type t2.micro --key-name DevOpsMargoKeys --security-group-ids sg-0ead2b9cb39d6b89d --subnet-id subnet-03faa756dd197c962 --user-data file://user-data.sh
