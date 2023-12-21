FROM busybox:1.36.1@sha256:6fcbd181125495adab5baffadddcc43345e28b17b6cb719ed02dc2da1796e9dd
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
