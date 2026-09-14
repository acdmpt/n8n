FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
ENV N8N_PORT=10000
EXPOSE 10000

# Caminho absoluto direto para o executável do n8n
CMD ["/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
