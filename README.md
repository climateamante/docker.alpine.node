# docker: alpine.node.app
> `alpine:3.9.0` `node:12.16.2`, `lite-Server 2.5.4`

### setup:
 - folder structure for docker.alpine:
    - `var/www/app/`

 - folder structure for the lite-server:
    -  `var/www/app/public/index.html`

### npm installs 
 
 - lite-server@2.5.4
    - `small minimal http server for web view`

### example:

 - `Docker run wants absolute paths`
 - `docker-compose is just a stand-in for the docker-engine client`
 - Start with `docker-compose up`
 - Otherwise use our custom bash command `dockr` for complex docker shortcuts

``bash
docker run \
-v $PWD/app:/var/www/app \
-p 80:8080 \
--name alpine.node.dev \
-it --rm researchranks/alpine.node:12.16.2 npm start
``

``bash
docker run \
-v $PWD/app:/var/www/app \
-p 80:8080 \
--name alpine.node.dev \
-it --rm researchranks/alpine.node:12.16.2 /bin/ash
``