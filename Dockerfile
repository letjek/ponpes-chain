FROM --platform=$BUILDPLATFORM rust:1.81-bullseye AS builder

ARG RUST_TARGET

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		build-essential \
		clang \
		pkg-config \
		libssl-dev \
		protobuf-compiler && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /code
COPY . .

RUN rustup target add wasm32-unknown-unknown
# Allow cross-target build (e.g. RUST_TARGET=aarch64-unknown-linux-gnu for arm64 servers/Pi)
RUN if [ -n "$RUST_TARGET" ]; then rustup target add "$RUST_TARGET"; fi
RUN cargo build -p ponpes-chain --release --locked ${RUST_TARGET:+--target $RUST_TARGET}

FROM debian:bookworm-slim

RUN apt-get update && \
	apt-get install -y --no-install-recommends ca-certificates && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /app
ARG RUST_TARGET
COPY --from=builder /code/target/${RUST_TARGET:+$RUST_TARGET/}release/ponpes-chain /usr/local/bin/ponpes-chain

ENTRYPOINT ["/usr/local/bin/ponpes-chain"]
CMD ["--help"]
