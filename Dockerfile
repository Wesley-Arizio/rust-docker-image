FROM rust as builder
WORKDIR /rust-docker-image

# Copy the source code
COPY . .

# Add dependency
RUN rustup target add x86_64-unknown-linux-musl

# Build application
RUN cargo build --release --target x86_64-unknown-linux-musl

FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y extra-runtime-dependencies & rm -rf /var/lib/apt/lists/*

COPY --from=builder /rust-docker-image/target/x86_64-unknown-linux-musl/release/rust-docker-image /usr/local/bin/rust-docker-image

CMD ["rust-docker-image"]