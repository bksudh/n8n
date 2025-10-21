# Use official n8n Docker image
FROM n8nio/n8n:latest

# Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV GENERIC_TIMEZONE=Asia/Kolkata

EXPOSE 5678

CMD ["tini", "--", "n8n"]
