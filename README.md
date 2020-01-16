# matchstick

An opinionated [docker] image for data science with [Pytorch].

**warning**: both [jupyter notebook] and [tensorboard] serve **unencrypted** content

## requirements

- [docker] >=19.0.0

## usage

```bash
docker run -it --rm --gpus=all -p 8888:8888 -p 6006:6006 mwilliammyers/matchstick
```

and then copy the URL that looks like `http://127.0.0.1:8888/?token=...` into your browser; replacing `127.0.0.1` with the appropriate hostname if necessary.

You can also run it `detached`:

```bash
docker run -d --restart=always --name=matchstick --gpus=all -p 8888:8888 -p 6006:6006 mwilliammyers/matchstick
```

in which case you will need to run `docker logs matchstick` to view the container logs to obtain the URL + token.

## features

- [pytorch]
- GPU/[CUDA]
- [pytorch-ignite]
- [tensorboard]
- [jupyter notebook]
- all the rest of the usual suspects like [numpy] etc.

[docker]: https://docs.docker.com/install/
[pytorch]: https://pytorch.org
[CUDA]: https://developer.nvidia.com/cuda-toolkit
[pytorch-ignite]: https://pytorch.org/ignite/
[tensorboard]: https://www.tensorflow.org/tensorboard
[jupyter notebook]: https://jupyter.org/index.html
[numpy]: https://numpy.org
