FROM docker.n8n.io/n8nio/n8n:latest

USER root
# Alpine uses apk, not apt-get
RUN apk add --no-cache ffmpeg
USER node

ENV N8N_USER_FOLDER=/home/node/.n8n
