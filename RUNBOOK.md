# Deployment Runbook
1. Create a GitHub repo and upload these 4 files(render.yaml, Dockerfile, README.md, RUNBOOK.md).
2. On Render(render.com): New → Blueprint → connect the repo.
3. Render reads render.yaml and asks for the secrets(env vars marked sync:false).
   Fill them: N8N_BASIC_AUTH_PASSWORD, N8N_USER_MANAGEMENT_JWT_SECRET,
   NVIDIA_API_KEY, TELEGRAM_BOT_TOKEN, TELEGRAM_CHAT_ID, SITE_TOKEN,
   SHOPIFY_SHOP, SHOPIFY_ADMIN_TOKEN.
4. Render builds(2–4 min) → get URL: https://n8n-leadbot.onrender.com
5. Open URL → log in(admin / password).
6. Workflows → Import from File → import each deliverable/*.json workflow.
7. For each workflow: connect Google Sheets(OAuth) + Telegram(bot token) credentials.
8. Activate each workflow.
