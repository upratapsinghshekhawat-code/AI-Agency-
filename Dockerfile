class="tok-comment"># Minimal n8n community edition for free-tier 512MB hosting
FROM n8nio/n8n:latest

ENV N8N_RUNNERS_ENABLED=false \
    NODE_OPTIONS=class="tok-comment">--max-old-space-size=384

EXPOSE 5678

