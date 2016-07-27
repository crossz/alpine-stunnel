#### Edge Alpine Stunnel

Inspired by [hub.docker.com/r/jamespedwards42/alpine-stunnel](https://hub.docker.com/r/jamespedwards42/alpine-stunnel/).


This Stunel service depends on Squid service.


## How to run

### server side (foreign proxy server with Squid):

- Create pem: openssl-dev or libssl-dev may be needed on Centos/Ubuntu 
  yum -y install stunnel openssl

-Docker:  

  docker run -d --net=host --name cr-stunnel-1 -v /root/docker-alpine-stunnel/stunnel.pem:/etc/stunnel/stunnel.pem -v /root/docker-alpine-stunnel/stunnel.conf:/etc/stunnel/stunnel.conf cr-stunnel

  Note: change the path name of your pem and conf files.

### client side:

- Install Stunnel:

yum -y install stunnel openssl-devel

- Start service:

copy the files in dir of clients into /etc/stunnel/, then run "stunnel".

## How to use

In the client conf file, I usesd 7071 port number, so:

- On linux: 
  $ export http_proxy=CLIENT_IP:7071
  $ curl google.com
  $ curl ifconfig.co 

  You will find the FOREIGN server IP will be printed, even you set the proxy as client ip. This means the secure tunnel is connected.

- On Windows:

  Just set IE proxy with CLIENT_IP:7071
  
