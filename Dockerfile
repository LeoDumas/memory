FROM nginx:latest

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/concentration/html/

EXPOSE 80

COPY ./html /var/concentration/html/

CMD ["nginx", "-g", "daemon off;"]