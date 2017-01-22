FROM ubuntu:17.04
MAINTAINER momoiroshikibu <momoiroshikibu@gmail.com>

RUN apt-get update \
    && apt-get upgrade -y

RUN apt-get install -y \
    build-essential \
    curl \
    autotools-dev \
    automake \
    libcurl4-gnutls-dev

RUN curl -SL https://github.com/snmsts/roswell/archive/release.tar.gz \
    | tar -xzC /tmp/

WORKDIR /tmp/roswell-release
RUN sh bootstrap && ./configure && make && make install
RUN ros install sbcl-bin/1.3.12 # 1.3.13 has avolid static-vectors error


RUN ros install clack
RUN ln -s /root/.roswell/bin/clackup /usr/local/bin/clackup

# cl-mysql
# Unable to load foreign library (LIBMYSQLCLIENT).
# Error opening shared object "libmysqlclient_r.so":
# libmysqlclient_r.so: cannot open shared object file: No such file or directory.
RUN apt-get install libmysqlclient-dev -y
RUN ln -s /usr/lib/x86_64-linux-gnu/libmysqlclient.so /usr/lib/x86_64-linux-gnu/libmysqlclient_r.so
RUN ls -la /opt

WORKDIR /Savignac
