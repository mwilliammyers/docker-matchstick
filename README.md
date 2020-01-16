# matchstick

An opinionated docker image for data science with Pytorch.

**warning**: both jupyter and tensorboard serve **unencrypted** content

## requirements

- [docker](https://docs.docker.com/install/) >=19.0.0

## usage

```bash
docker run -it --rm --gpus=all -p 8888:8888 -p 6006:6006 mwilliammyers/matchstick
```

and then copy the URL that looks like `http://127.0.0.1:8888/?token=3e9b1ea3e4d9802ae2b3cb89952f944be9fca92f4f278e7f1` into your browser; replacing `127.0.0.1` with the appropriate hostname if necessary.

## features

- [pytorch](https://pytorch.org)
- GPU/[CUDA](https://developer.nvidia.com/cuda-toolkit)
- [pytorch ignite](https://pytorch.org/ignite/)
- [tensorboard](https://www.tensorflow.org/tensorboard)
- [jupyter notebook](https://jupyter.org/index.html)
