### AWS to create an instanse
```power shell
aws ec2 run-instances --image-id ami-01bc990364452ab3e --count 1 --instance-type t2.micro --key-name DevOpsMargoKeys --security-group-ids sg-0ead2b9cb39d6b89d --subnet-id subnet-03faa756dd197c962 --user-data file://run.txt
```

### To START Instance
`aws ec2 start-instances --instance-ids i-04279455898b164fe`

### To STOP Instance
`aws ec2 stop-instances --instance-ids i-04279455898b164fe`

### To connect to instance
`ssh -i "DevOpsMargoKeys.pem" ec2-user@ec2-3-86-50-166.compute-1.amazonaws.com`

[Open in browser: ec2-3-86-50-166.compute-1.amazonaws.com](http://ec2-3-86-50-166.compute-1.amazonaws.com/)

### script
```power shell
#!/bin/bash 
sudo yum update
sudo yum -y install mc vim git httpd 
sudo service httpd start
sudo systemctl enable httpd
```
