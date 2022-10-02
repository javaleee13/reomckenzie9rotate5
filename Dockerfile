
FROM mauros5/9hits_autoinstall:latest

RUN apt update -y
RUN apt upgrade -y
#RUN apt install curl gnupg2 ca-certificates lsb-release -y
RUN apt install nginx -y

#RUN rm /etc/nginx/sites-available/default

#COPY default /etc/nginx/sites-available/default

CMD service nginx start && cd /root/9Hits/ && echo token=7331cfb2434fe46b67d3681eeb1b1691 > parameters && echo sessions=10 >> parameters && echo maxcpu=2 >> parameters && echo exProxyServer= >> parameters && echo restart=2 >> parameters && echo name=wwww1 >> parameters && echo url=https://www.dropbox.com/s/usku8rcyysk9664/9hits-linux-x64-2.5.2.tar.bz2 >> parameters && echo allowAdult=allow >> parameters && echo allowPopups=allow >> parameters && echo allowMining=deny >> parameters && /root/9Hits/recreate.sh && /usr/sbin/cron -f

