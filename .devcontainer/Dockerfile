FROM debian:bookworm-slim

USER root

# Install curl and other essentials
RUN apt-get update && apt-get install -y \
    curl \
    git \
    bash \
    ca-certificates \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user matching the original 'node' uid/gid convention
RUN groupadd --gid 1000 devuser && \
    useradd --uid 1000 --gid devuser --shell /bin/bash --create-home devuser

USER devuser
WORKDIR /home/devuser

# Install Foundry
RUN curl -L https://foundry.paradigm.xyz | bash \
  && /bin/bash -c "source ~/.bashrc && ~/.foundry/bin/foundryup"