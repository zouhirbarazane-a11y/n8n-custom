FROM n8nio/n8n

# Install yt-dlp + ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip && \
    pip3 install yt-dlp && \
    rm -rf /var/lib/apt/lists/*
