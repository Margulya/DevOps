### AWS to create an Instanse
`sh run-instance.sh`

### To START Instance
`sh start-instance.sh <instance-id>`

### To STOP Instance
`sh stop-instance.sh <instance-id>`

### To connect to Instance via SSH
`sh connect-to-instance.sh <instance-id>`

### After successful connection, run to see lasted logs:
- `tail -f /var/log/sysinfo`
