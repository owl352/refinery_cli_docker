
FROM rust:1.80-alpine3.19
RUN apk add --no-cache git cmake clang libressl-dev
RUN git clone https://github.com/rust-db/refinery
RUN cargo install refinery_cli