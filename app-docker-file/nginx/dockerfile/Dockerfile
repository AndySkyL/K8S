FROM nginx
MAINTAINER Andy tang
ADD nginx.conf  /etc/nginx/nginx.conf
ADD drop.conf  /etc/nginx/drop.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
