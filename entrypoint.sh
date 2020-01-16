#!/bin/sh

set -e

JUPYTER_TLS_DIR="$HOME/.config/jupyter/tls"

mkdir -p "$JUPYTER_TLS_DIR"

# TODO: allow for adding custom certificates...
# TODO: or should we do this in Dockerfile?
openssl req -x509 -nodes -days 365 \
	-newkey rsa:2048 \
	-subj "/" \
	-keyout "$JUPYTER_TLS_DIR/private.key" \
	-out "$JUPYTER_TLS_DIR/cert.pem"

tensorboard --bind_all --logdir=runs &

jupyter notebook \
	--allow-root \
	--no-browser \
	--ip=* \
	--port=8888 \
	--keyfile="$JUPYTER_TLS_DIR/private.key" \
	--certfile="$JUPYTER_TLS_DIR/cert.pem"
