FROM debian:jessie
ADD http://software.virtualmin.com/gpl/scripts/install.sh /
RUN apt-get update && apt-get install -y perl curl iftop iotop htop lynx
RUN chmod +x /install.sh
EXPOSE 25 53 80 110 111 143 443 587 993 995 3306 10000 20000 40259 38532
RUN echo "vmin.dkr01.takelan.com" > /etc/hostname
RUN apt-get update && apt-get install -y  apache2-mpm-worker php5-dev libapache2-mod-php5 php5-ffmpeg php5-geoip php5-imagick php5-memcached php5-svn php5-cgi php5-cli php5-common php5-curl php5-gd php5-gmp php5-imap php5-ldap php5-mcrypt php5-mysql php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-pear memcached 
RUN hostname -f
