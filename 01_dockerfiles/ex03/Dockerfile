FROM debian

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install wget git gcc -y

# Source info https://gogs.io/docs/installation/install_from_source.html

WORKDIR $HOME/local

# Download go
RUN wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz && \
    tar -xzvf go1.8.linux-amd64.tar.gz

# init env go
ENV GOROOT=$HOME/local/go
ENV GOPATH=$HOME/go
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# gogs installation
WORKDIR $GOPATH/src/github.com/gogits
RUN git clone --depth=1 -b develop https://github.com/gogits/gogs.git
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build

EXPOSE 3000

ENTRYPOINT ./gogs web
