FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic tools
RUN apt update && apt install -y \
    curl \
    nano \
    git

# Install Node.js v22.x via NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt install -y nodejs

# Confirm everything installed correctly
RUN node -v && npm -v && git --version && nano --version

WORKDIR /workspace

CMD [ "bash" ]
