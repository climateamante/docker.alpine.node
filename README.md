## alpine.node: docker build 
- docker: 19.03.8 (build afacb8b)
- alpine: 3.11.6 (LTS)
> `cat /etc/*-release`
- node: 12.18.12 (LTS)
> `node --version`
- npm: 6.14.5
> `npm --version`
- npx 6.14.5
> `npx --version`
- yarn: 1.22.4
> `yarn --version`


### setup:
 - folder structure for docker.alpine:
    - ``var/www/app/``

 - folder structure for the lite-server:
    -  ``var/www/app/public/index.html``

### example:
 - ``Docker run wants absolute paths``
 - ``docker-compose is just a stand-in for the docker-engine client``
 - Start with ``docker-compose up``
 - Otherwise use our custom bash command ``dockr`` for complex docker shortcuts

```bash
docker run \
-v $PWD/app:/var/www/app \
-p 80:8080 \
--name alpine.node.dev \
-it --rm researchranks/alpine.node:alpine.3.11.6.node.12.18.12 npm start
```

```bash
docker run \
-v $PWD/app:/var/www/app \
-p 80:8080 \
--name alpine.node.dev \
-it --rm researchranks/alpine.node:alpine.3.11.6.node.12.18.12 /bin/ash
```