FROM docker.io/library/httpd:2.4.63@sha256:2dde9d4b0d9e97aece96fbc67db2e0f7a9109e6a9ed1c6deb4f8d2031428e3a3
WORKDIR /app

COPY ./public/ ./public/

EXPOSE 3000
CMD ["httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
