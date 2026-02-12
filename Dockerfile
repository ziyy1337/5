# Base image
FROM ubuntu:22.04

# Non-interactive apt
ENV DEBIAN_FRONTEND=noninteractive

# Gerekli paketler
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Render PORT'u
ENV PORT=10000

# Container başlatıldığında:
# 1) sshx çalışır
# 2) Render için port açık tutulur
CMD bash -c "curl -sSf https://sshx.io/get | sh -s run & nc -l -p $PORT"
