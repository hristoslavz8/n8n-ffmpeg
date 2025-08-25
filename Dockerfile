FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends ffmpeg \
  && rm -rf /var/lib/apt/lists/*
USER node

ENV N8N_USER_FOLDER=/home/node/.n8n
