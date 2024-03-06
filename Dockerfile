FROM busybox:1.36.1@sha256:478209e7be50e5f5c9fd47a6a71d43c119dd44c393160e49dc4bb86f99a439de
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
