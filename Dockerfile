FROM ubuntu:14.04

RUN apt-get update && apt-get install -y ca-certificates \
 git build-essential cmake openssl libssl-dev libyaml-dev \
	--no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

RUN git clone -q https://github.com/h2o/h2o.git --depth 1    
WORKDIR /h2o
RUN cmake . && make h2o
