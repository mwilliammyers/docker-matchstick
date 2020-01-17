FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime

# TODO: add 'pytorch-ignite>=0.3.0' once it is published
RUN pip --no-cache-dir install \
	'https://api.github.com/repos/pytorch/ignite/tarball/5b1bcd3' \
	'matplotlib>=3' \
	'numpy>=1' \
	'pandas>=0.25.0' \
	'pynvml>=8' \
	'seaborn>=0.9.0' \
	'tensorboard>=2' \
	'torch>=1' \
	'torchvision>=0.4.0' \
	'tqdm>=4' \
	'jupyter>=1'

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

EXPOSE 8888 6006

CMD ["/usr/local/bin/./entrypoint.sh"]