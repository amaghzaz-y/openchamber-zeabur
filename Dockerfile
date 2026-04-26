FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://bun.sh/install | bash

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

RUN curl -fsSL https://opencode.ai/install | bash

ENV PATH="/root/.bun/bin:/root/.opencode/bin:/root/.local/bin:/usr/local/bin:$PATH"
ENV OPENCODE_BINARY="/root/.opencode/bin/opencode"

RUN curl -fsSL https://raw.githubusercontent.com/openchamber/openchamber/main/scripts/install.sh | bash

ENV OPENCHAMBER_HOST=0.0.0.0
ENV OPENCHAMBER_UI_PASSWORD=
ENV OPENCHAMBER_DATA_DIR=
ENV OPENCODE_HOST=
ENV OPENCODE_PORT=
ENV OPENCODE_SKIP_START=false
ENV OPENCHAMBER_OPENCODE_HOSTNAME=127.0.0.1

EXPOSE 3000

ENTRYPOINT ["openchamber", "serve", "--foreground"]