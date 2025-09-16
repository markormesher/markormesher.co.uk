FROM docker.io/joseluisq/static-web-server:2.38.1@sha256:54345a59d7dfd54c1d8d5e14322b73eff5daa5ad6d06998e67ff53e149d93981
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
