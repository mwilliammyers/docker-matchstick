# matchstick

An opinionated docker image for data science with Pytorch.

**warning**: both jupyter and tensorboard serve **unencrypted** content

## requirements

- [docker](https://docs.docker.com/install/) >=19.0.0

## usage

```bash
docker run --gpus=all -p 8888:8888 -p 6006:6006 mwilliammyers/matchstick
```

## features

- [pytorch](https://pytorch.org)
- GPU/[CUDA](https://developer.nvidia.com/cuda-toolkit)
- [pytorch ignite](https://pytorch.org/ignite/)
- [tensorboard](https://www.tensorflow.org/tensorboard)
- [jupyter notebook](https://jupyter.org/index.html)
