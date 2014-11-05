# Pull base image.
FROM debian:wheezy

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  rm /etc/nginx/sites-enabled/*

# copy main nginx conf setup for Docker
ADD nginx.conf /etc/nginx/

# copy ssl proxy configuration
ADD sites-enabled /etc/nginx/sites-enabled

# Define default command.
CMD ["nginx"]
