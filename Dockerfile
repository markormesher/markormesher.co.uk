FROM node:16.14.2-alpine
WORKDIR /app
RUN yarn global add http-server
COPY ./public/ ./public/
EXPOSE 3000
CMD http-server ./public -c-1 -p 3000
