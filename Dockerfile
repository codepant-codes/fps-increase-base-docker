# Use the official Python image as the base image
FROM python:3.10-slim

# Packages Installing
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg && \
pip install --no-cache-dir debugpy torchvision==0.16.0 opencv-python==4.9.0.80 sk-video==1.1.10 \
moviepy==1.0.3 pika==1.3.2 python-dotenv==0.21.1 seqlog==0.3.30 numpy==1.21.5 tqdm==4.64.1 \
minio==7.2.5 && \
apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache

# Uncomment the following line for debugging this image
# ENTRYPOINT ["tail", "-f", "/dev/null"]
