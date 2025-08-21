FROM n8nio/n8n

# Install ffmpeg + yt-dlp
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip && \
    pip3 install --no-cache-dir yt-dlp && \
    rm -rf /var/lib/apt/lists/*

USER node
