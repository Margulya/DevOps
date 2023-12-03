### AWS to create an instanse
```power shell
aws ec2 run-instances --image-id ami-01bc990364452ab3e --count 1 --instance-type t2.micro --key-name DevOpsMargoKeys --security-group-ids sg-0ead2b9cb39d6b89d --subnet-id subnet-03faa756dd197c962 --user-data file://script.txt
```

### To START Instance
`aws ec2 start-instances --instance-ids i-08d4721b7a2c622b5`

### To STOP Instance
`aws ec2 stop-instances --instance-ids i-08d4721b7a2c622b5`

### To connect to Instance
`ssh -i "DevOpsMargoKeys.pem" ec2-user@ec2-34-238-44-253.compute-1.amazonaws.com`

*Useful commands*

PASSWORD to adminuser:
eZ5JQkt4J8ZKfTN1

* `su [adminuser | poweruser]`
* `ls -l softlink`
* `id`
* `whoami`
* `cd /home/adminuser` - by poweruser