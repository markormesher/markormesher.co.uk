FROM docker.io/joseluisq/static-web-server:2.44.1@sha256:94618e3d17802265a21926217e6f9e7832b311b6fbf5933684001739fafed06a
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
