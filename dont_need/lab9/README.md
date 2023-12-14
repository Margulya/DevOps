### AWS to create an Instanse
`sh run-instance.sh`

### To START Instance
`sh start-instance.sh <instance-id>`

### To STOP Instance
`sh stop-instance.sh <instance-id>`

### To connect to Instance via SSH and create local port forwaring tunnel
`sh connect-to-instance.sh <instance-id>`

# Build the Docker image on the remote instance
`sh build-docker-image.sh`

# Run the Docker image with nginx server
`sh run-docker-container.sh`

### Get Public DNS of Instance
`sh get-dns.sh <instance-id>`

# Stop and remove Docker images on localhost:5566
`sh stop-docker-container.sh `
