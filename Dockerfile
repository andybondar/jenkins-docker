FROM alpine:latest
RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /run/nginx

COPY nginx/nginx.conf /etc/nginx/nginx.conf


CMD ["nginx", "-g", "daemon off;"]

