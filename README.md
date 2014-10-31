# ssl-proxy

This container is nginx configured to act as an SSL proxy for HTTP and WebSocket between http-kit and the world.

## How to run

It should be linked with the container that is running http-kit, and needs to be able to read the SSL keys from the host (path need to be absolute):

```
docker run -p 443:443 --name ssl --link api:secured_api -v ~/Workspace/Aircart/certs:/etc/nginx/certs:ro aircart/ssl-proxy
```
## Generating keys

To generate new certificates, see [Digital Ocean's tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-a-ssl-certificate-on-nginx-for-ubuntu-12-04).
