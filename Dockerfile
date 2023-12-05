FROM busybox:1.36.1@sha256:1ceb872bcc68a8fcd34c97952658b58086affdcb604c90c1dee2735bde5edc2f
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
