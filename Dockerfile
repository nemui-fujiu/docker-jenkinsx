FROM debian:stretch-slim
LABEL maintainer "satoshi.fujiu <satoshi.fujiu@gmail.com>"

RUN apt-get update && apt-get -y install curl gzip tar
RUN mkdir -p ~/.jx/bin
RUN curl -L https://github.com/jenkins-x/jx/releases/download/v1.3.297/jx-linux-amd64.tar.gz | tar xzv -C ~/.jx/bin
RUN export PATH=$PATH:~/.jx/bin
RUN echo 'export PATH=$PATH:~/.jx/bin' >> ~/.bashrc