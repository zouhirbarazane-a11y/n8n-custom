# Use the Debian-based n8n image so apt-get works
FROM n8nio/n8n:latest-debian

# Install ffmpeg and python3 + pip
RUN apt-get update && apt-get install -y ffmpeg python3-pip \
    && pip3 install -U yt-dlp \
    && rm -rf /var/lib/apt/lists/*

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
