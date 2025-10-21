# Use the official n8n image
FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /data

# Expose n8n default port
EXPOSE 5678

# Run n8n with tini (already included in base image)
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
