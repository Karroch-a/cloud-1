FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --no-install-recommends -y vim git nginx tzdata ca-certificates
RUN mkdir /etc/nginx/ssl && chmod 700 /etc/nginx/ssl && openssl req -x509 -days 365 -newkey rsa:4096 -nodes -keyout "/etc/nginx/ssl/ab.key" -out "/etc/nginx/ssl/ab.crt" -subj "/C=MA/"
COPY ./tools/default /etc/nginx/sites-available/
CMD ["nginx", "-g", "daemon off;"]