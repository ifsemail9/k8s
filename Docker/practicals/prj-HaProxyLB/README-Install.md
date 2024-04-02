Delete the OLD Network​
========================
docker network rm mynetwork​
​
Create Network​
=============
docker network create --subnet=172.25.0.0/16 mynetwork​

​Starting the WEB Servers​
=======================
WEB1:<br />
docker run -itd --rm -p 8091:80 --net mynetwork --ip 172.25.0.11 a11aruna/build-php-httpd ​<br />
WEB2:<br />
docker run -itd --rm -p 8090:80 --net mynetwork --ip 172.25.0.10 a11aruna/build-php-httpd​<br />

​Create the Config file​
======================
Create Haproxy.cfg File​

​Starting the HA Proxy Servers - [haproxy:1.7]​
============================================
docker run -d --rm --name my-running-haproxy --net mynetwork -v /root/docker/docker-compose-demo:/usr/local/etc/haproxy:ro --sysctl net.ipv4.ip_unprivileged_port_start=0 -p 80:80 haproxy:1.7​

​Read the log file​
=================
docker logs my-running-haproxy –f​

Check the IPs​
============
docker inspect amazing_easley | grep -A 200 "Networks"​<br />
docker inspect my-running-haproxy | grep -A 200 "Networks"​

​Run command inside the containers​
=================================
docker exec -it a11aruna/build-php-httpd cat /etc/hosts​<br />
docker exec -it 5ad9ff03945b cat /etc/hosts
