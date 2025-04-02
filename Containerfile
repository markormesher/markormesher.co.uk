FROM docker.io/joseluisq/static-web-server:2.36.1@sha256:210d9726e0f06c10639156563e70ce0692a6618707e0bf7b3cf842caf3f28e18
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
