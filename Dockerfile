
FROM ubuntu:14.04

#RUN apt update -y
#RUN apt upgrade -y
#RUN apt install curl gnupg2 ca-certificates lsb-release -y
#RUN apt install nginx -y

apt-get update -y
apt-get upgrade -y
apt-get install -y bzip2 libcanberra-gtk-module libxss1 sed tar libxtst6 libnss3 wget psmisc bc libgtk-3-0 libgbm-dev libatspi2.0-0 libatomic1 lsb-release -y
RUN apt install nginx -y

#RUN rm /etc/nginx/conf.d/default.conf

#COPY nginx.conf /etc/nginx/conf.d/default.conf


CMD yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7331cfb2434fe46b67d3681eeb1b1691" "10" "1" "3" "2" "wwww1" "" "https://www.dropbox.com/s/usku8rcyysk9664/9hits-linux-x64-2.5.2.tar.bz2"
