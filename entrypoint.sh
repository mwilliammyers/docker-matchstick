#!/bin/sh

tensorboard --logdir=runs &

jupyter notebook --allow-root --no-browser --port=8888