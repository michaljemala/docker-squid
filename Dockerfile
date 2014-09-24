FROM ubuntu:14.04
MAINTAINER Michal Jemala <michal.jemala@gmail.com>

RUN apt-get -qq update > /dev/null
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy squid3
ADD squid.conf /etc/squid3/squid.conf
ADD passwd /etc/squid3/passwd

EXPOSE 3128

CMD /usr/sbin/squid3 -N -d 0
