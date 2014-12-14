FROM node:0.10.33
MAINTAINER Ilkka Laukkanen <ilkka.laukkanen@futurice.com>

RUN mkdir /work
WORKDIR /work
COPY package.json /work/
RUN npm install
ENTRYPOINT ["npm"]
