FROM node:8.11.3-alpine

LABEL maintainer "lostthetrail"

ENV CI true
ENV NODE_ENV production

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN npm i -g npm

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node"]
