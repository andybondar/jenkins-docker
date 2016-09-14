FROM alpine:latest
RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /run/nginx
RUN mkdir -p /vhosts/pooling
RUN ln -s /var/jenkins_home/vhosts/pooling /vhosts/pooling/public_html
RUN mkdir -p /vhosts/params
RUN ln -s /var/jenkins_home/vhosts/params /vhosts/params/public_html

COPY nginx/nginx.conf /etc/nginx/nginx.conf


CMD ["nginx", "-g", "daemon off;"]

