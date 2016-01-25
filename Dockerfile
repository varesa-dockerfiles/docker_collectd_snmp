FROM registry.esav.fi:5000/centos

MAINTAINER Esa Varemo <esa@kuivanto.fi>

RUN yum install -y collectd collectd-snmp

COPY collectd.conf /etc/collectd.conf
COPY collectd.d /etc/collectd.d

RUN ["/usr/sbin/collectd", "-f", "-C /etc/collectd.conf"]
