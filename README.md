docker-squid
===============

Squid3 proxy server with authentication enabled

Usage
=====
```
docker pull mjemala/squid

docker run -d -p 3128:3128  mjemala/squid

curl -x http://localhost:3128 -U proxy:proxy http://www.google.com
```
