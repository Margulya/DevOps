# Use the official CentOS 7 base image
FROM centos:centos7

# Install Nginx
RUN yum -y install epel-release && \
    yum -y install nginx && \
    yum clean all && \
    rm -rf /var/cache/yum

# Copy content to web server
COPY ./html/* /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
