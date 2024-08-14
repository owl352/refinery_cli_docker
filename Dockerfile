FROM rust:1.80-alpine3.19 as build
RUN apk add --no-cache git cmake clang libressl-dev
RUN git clone https://github.com/rust-db/refinery
WORKDIR /refinery/refinery_cli
RUN cargo build

FROM alpine:3.19 as refinery_cli
WORKDIR /app
COPY --from=build /refinery/target/debug/refinery /app