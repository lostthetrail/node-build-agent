FROM node:8.11.3-alpine

# Consider using the following links to use non-root
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#non-root-user
# https://github.com/docker-library/redis/tree/master/4.0/alpine

LABEL maintainer "lostthetrail"

ENV CI true
ENV NODE_ENV development

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN npm i -g npm

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node"]
