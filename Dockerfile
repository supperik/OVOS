FROM node:22-bullseye-slim

ENV NODE_VERSION=22.9.0

WORKDIR /app

COPY [".", "."]

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]