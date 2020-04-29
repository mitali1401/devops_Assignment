FROM ubuntu:16.04

# Update and upgrade repo
RUN apt-get update -y -q && apt-get upgrade -y -q 

# Install tools we might need
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git vim mysql-server

# Download Go 1.2.2 and install it to /usr/local/go
RUN curl -s https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz| tar -v -C /usr/local -xz

WORKDIR /home/

COPY go ./go

COPY go/src ./src
COPY paths.sh ./

ENV GOROOT=/usr/local/go
ENV GOPATH=/home/
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

