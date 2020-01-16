#!/bin/sh

tensorboard --bind_all --logdir=runs &

jupyter notebook --allow-root --no-browser --ip=* --port=8888