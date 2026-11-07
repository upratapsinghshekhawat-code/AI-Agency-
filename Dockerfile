class="tok-comment"># Minimal n8n community edition for free-tier 512MB hosting
FROM n8nio/n8n:latest

ENV N8N_RUNNERS_MODE=internal \
    N8N_RUNNERS_TASK_TIMEOUT=60 \
    NODE_OPTIONS=class="tok-comment">--max-old-space-size=384

EXPOSE 5678
