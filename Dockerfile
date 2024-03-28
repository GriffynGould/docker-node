FROM node 

WORKDIR /srv/griffyn-node

COPY . .

RUN npm install

ENV MONGODB_URI="mongodb://my-mongo/docker-test"
ENV REDIS_URI="redis://my-redis"

ENTRYPOINT ["node","index.js"]