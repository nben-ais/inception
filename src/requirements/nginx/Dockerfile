FROM debian

WORKDIR /app

RUN apt-get update && apt-get install -y nginx

RUN touch test.cpp

#COPY conf/file.conf /etc/nginx/nginx.conf

CMD ["nginx" , "-g", "daemon off;"]