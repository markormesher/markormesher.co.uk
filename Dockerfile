FROM node:16.14.2-alpine@sha256:28bed508446db2ee028d08e76fb47b935defa26a84986ca050d2596ea67fd506
WORKDIR /app
RUN yarn global add http-server
COPY ./public/ ./public/
EXPOSE 3000
CMD http-server ./public -c-1 -p 3000
