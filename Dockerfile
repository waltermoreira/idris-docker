FROM ubuntu:15.04

RUN apt-get update
RUN apt-get install -y libghc-terminfo-dev libncurses-dev build-essential haskell-platform
RUN cabal update
RUN cabal install cabal cabal-install
ENV PATH /root/.cabal/bin:$PATH
RUN cabal update
RUN cabal install idris

WORKDIR /data

CMD ["idris"]
