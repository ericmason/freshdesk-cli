FROM node:12

USER root

RUN apt-get update \
   && apt-get -y install libsqlite3-dev build-essential python \
   && npm install https://dl.freshdev.io/cli/fdk.tgz -g --unsafe-perm \
   && apt-get -y remove build-essential \
   && rm -rf /var/www/var/cache/* \ 
   && mkdir /freshdesk \
   && chown node /freshdesk

# RUN npm install https://dl.freshdev.io/cli/fdk.tgz -g --unsafe-perm 
WORKDIR /freshdesk

USER node

ENTRYPOINT [ "fdk" ]

