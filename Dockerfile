FROM busybox:1.36.1@sha256:34b191d63fbc93e25e275bfccf1b5365664e5ac28f06d974e8d50090fbb49f41
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
