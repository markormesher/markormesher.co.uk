FROM busybox:1.37.0@sha256:2919d0172f7524b2d8df9e50066a682669e6d170ac0f6a49676d54358fe970b5
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
