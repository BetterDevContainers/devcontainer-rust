ARG BASE_VERSION=main

FROM ghcr.io/betterdevcontainers/devcontainer-base:${BASE_VERSION}
ARG USERNAME=developer

USER ${USERNAME}

# Install Rust
ARG RUST_VERSION=1.76.0
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain ${RUST_VERSION} --no-modify-path
ENV PATH="/home/${USERNAME}/.cargo/bin:${PATH}"