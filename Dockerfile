FROM node:18-bullseye-slim

# install dependencies
RUN apt update \
    && apt install -y --no-install-recommends --no-install-suggests \
    python3 \
    git \
    gcc \
    curl \
    pkg-config \
    libssl-dev \
    cmake \
    pkg-config \
    build-essential \
    protobuf-compiler \
    ca-certificates \
    && update-ca-certificates

# Install rust and cargo tarpaulin
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV HOME=/root
ENV CARGO_HOME=$HOME/.cargo
ENV RUSTUP_HOME=$HOME/.rustup
ENV PATH=$PATH:$CARGO_HOME/bin
RUN rustup toolchain install stable --profile minimal --component clippy \
    && rustup update \
    && rustup default stable
RUN cargo install cargo-nextest --locked
RUN cargo install cargo-tarpaulin

# Neon bindings

WORKDIR /usr/src

COPY . .

RUN npm install -g cargo-cp-artifact

RUN cargo-cp-artifact -a cdylib zingolib-native native.node -- cargo build --release --manifest-path native/Cargo.toml --message-format=json-render-diagnostics

RUN ls
COPY native.node /usr/src/out

# RUN apt-get update -y
# RUN apt-get install -y wget unzip jq curl httpie # buildkit
# RUN pip install --upgrade pip

# RUN wget https://github.com/adityapk00/zecwallet-light-cli/releases/download/v1.8.0-beta2/linux-zecwallet-cli-v1.8.0-beta2.zip
# RUN unzip linux-zecwallet-cli-v1.8.0-beta2.zip
# RUN cp linux-zecwallet-cli-v1.8.0-beta2/zecwallet-cli /usr/local/bin/
# RUN chmod +x /usr/local/bin/zecwallet-cli
