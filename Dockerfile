# Base image
FROM ubuntu:22.04

# Non-interactive apt
ENV DEBIAN_FRONTEND=noninteractive

# Gerekli paketler
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Container başlatıldığında çalışacak komut
CMD ["bash", "-c", "curl -sSf https://sshx.io/get | sh -s run"]
