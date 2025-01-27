FROM docker.io/library/httpd:2.4.63@sha256:688ad5bf1b726f1cb7556569eef07230740e7def0fae3b6f1b50900dad178bb8
WORKDIR /app

COPY ./public/ ./public/

EXPOSE 3000
CMD ["httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
