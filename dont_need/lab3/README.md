### AWS to create an Instanse
`sh run-instance`

### To START Instance
`sh start-instance <instance-id>`

### To STOP Instance
`sh stop-instance <instance-id>`

### To connect to Instance via SSH
`sh connect-to-instance.sh <instance-id>`

### After successful connection, run to see lasted logs:
- `tail -f /var/log/sysinfo`
