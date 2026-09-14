FROM docker.io/n8nio/n8n:0.233.0

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
ENV N8N_PORT=10000
EXPOSE 10000
