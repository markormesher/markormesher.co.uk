FROM docker.io/joseluisq/static-web-server:2.42.0@sha256:2d67e47e22172235e339908777e692006ffdcf42dc4c531aff5d4337a7559a1e
WORKDIR /app

COPY ./public/ ./public/

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]

LABEL image.name=markormesher/markormesher.co.uk
LABEL image.registry=ghcr.io
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.title="markormesher.co.uk"
LABEL org.opencontainers.image.url="https://github.com/markormesher/markormesher.co.uk"
LABEL org.opencontainers.image.vendor=""
LABEL org.opencontainers.image.version=""
