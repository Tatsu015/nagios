# Nagios sample

run nagios on docker image.

## Usage

```bash
docker build . -t nagios
docker run --name nagios --rm -p 8080:80 -itd nagios:latest

# login to docker container
docker exec -it nagios /bin/bash
# start apache
httpd -DFOREGROUND
```
