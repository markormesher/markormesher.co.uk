FROM docker.io/joseluisq/static-web-server:2.40.0@sha256:71690a05c211134d93824324c520bbc2a3db9ef8dc71121969635e9c8a5e5070
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
