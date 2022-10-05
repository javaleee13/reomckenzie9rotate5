FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html
#COPY te.gif /usr/share/nginx/html
COPY ads.html /usr/share/nginx/html
COPY mediacpmpl460988e5dbf283acf402631f5bc639ac.txt /usr/share/nginx/html

