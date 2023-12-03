
### To create AWS Instance (executed):
```power shell
aws ec2 run-instances --image-id ami-01bc990364452ab3e --count 1 --instance-type t2.micro --key-name DevOpsMargoKeys --security-group-ids sg-0ead2b9cb39d6b89d --subnet-id subnet-03faa756dd197c962 --user-data file://run.txt
```

### To START Instance
`aws ec2 start-instances --instance-ids i-00a2036b8d0c70f3c`

### To STOP Instance
`aws ec2 stop-instances --instance-ids i-00a2036b8d0c70f3c`

### Connect to Instance via SSH
`ssh -i "DevOpsMargoKeys.pem" ec2-user@ec2-54-172-170-253.compute-1.amazonaws.com`

### After successful connection run to see lasted logs:
- `tail -f /var/log/sysinfo`
