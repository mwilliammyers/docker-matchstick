FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime

RUN pip --no-cache-dir install \
	'torch>=1' \
	'torchvision>=0.4.0' \
	'pytorch-ignite>=0.2.0' \
	'numpy>=1' \
	'jupyter>=1' \
	'tqdm>=4' \
	'matplotlib>=3' \
	'seaborn>=0.9.0' \
	'pandas>=0.25.0' \
	'tensorboard>=2'

COPY entrypoint.sh entrypoint.sh

CMD ["./entrypoint.sh"]