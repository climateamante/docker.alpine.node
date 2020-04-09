FROM mhart/alpine-node:12.16.2
MAINTAINER @researchranks @climateamante

# create app directories
RUN mkdir -p /var/www/app
WORKDIR /var/www/app


# installing http-server'
RUN echo 'installing node modules' \
	&& npm install --save --global lite-server@2.5.4