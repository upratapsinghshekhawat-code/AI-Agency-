# Minimal n8n community edition for free-tier 512MB hosting
FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n
USER node

EXPOSE 5678

ENV N8N_RUNNERS_ENABLED=false \
    NODE_OPTIONS=--max-old-space-size=384

CMD ["n8n", "start"]
