FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --no-install-recommends -y vim git nginx tzdata
COPY ./tools/default /etc/nginx/sites-available/
CMD ["nginx", "-g", "daemon off;"]