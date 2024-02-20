FROM ubuntu:22.04 AS base
RUN apt-get update
RUN apt-get install -y curl gcc make xz-utils
WORKDIR /root

FROM base AS qbe
RUN curl -LO https://c9x.me/compile/release/qbe-1.1.tar.xz \
  && tar xf qbe-1.1.tar.xz \
  && cd qbe-1.1 \
  && make \
  && make install

FROM base AS final
COPY --from=qbe /usr/local/bin/qbe /usr/local/bin/qbe
COPY . .
