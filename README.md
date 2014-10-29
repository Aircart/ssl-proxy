# ssl-proxy

This container is nginx configured to act as an SSL proxy for HTTP and WebSocket between http-kit and the world. When launched, it should be linked with the container that is running http-kit, for example:

```
docker run -p 443:443 --name ssl --link api:secured_api ssl-proxy
```

To generate new certificates, see [Digital Ocean's tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-a-ssl-certificate-on-nginx-for-ubuntu-12-04).
