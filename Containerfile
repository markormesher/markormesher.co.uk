FROM docker.io/joseluisq/static-web-server:2.44.3@sha256:ccf2d666ffe5f8ef2ec96bc40f07757605998c04b78f7d8fdb98a584dd4f5717
WORKDIR /app

COPY ./public/ ./public/

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]

LABEL image.name=markormesher/markormesher.co.uk
LABEL image.registry=ghcr.io
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.title="markormesher.co.uk"
LABEL org.opencontainers.image.url=""
LABEL org.opencontainers.image.vendor=""
LABEL org.opencontainers.image.version=""
