FROM debian:jessie
ADD http://software.virtualmin.com/gpl/scripts/install.sh /
RUN apt-get update && apt-get install -y perl curl iftop iotop apache2-mpm-worker
RUN chmod +x /install.sh
RUN echo "vmin.dkr01.takelan.com" > /etc/hostname
RUN hostname -f
