FROM ubuntu:quantal

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache
RUN echo "deb http://se.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list && apt-get update
RUN mkdir /build
ADD . /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
ENTRYPOINT ["/build/execute"]
