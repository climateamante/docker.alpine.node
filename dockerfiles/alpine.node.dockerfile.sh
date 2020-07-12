FROM node:lts-alpine3.11
MAINTAINER researchranks

# create app directories
RUN mkdir -p /var/www/app
WORKDIR /var/www/app