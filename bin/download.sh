#/usr/bin/env bash


VERSION=0.8.3
EXTNAME="dll" # dylib | so

download(){
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/crypto.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/json1.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/math.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/memstat.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/re.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/series.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/stats.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/text.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/unicode.$EXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/vsv.$EXTNAME
}


# compiled extensions for Apple M1 (arm64) are handled locally in manual fashion for now

mkdir -p priv/darwin-amd64
pushd priv/darwin-amd64
rm *
EXTNAME="dylib"
download


popd
mkdir -p priv/windows-amd64
pushd priv/windows-amd64
rm *
EXTNAME="dll"
download


popd
mkdir -p priv/linux-amd64
pushd priv/linux-amd64
rm *
EXTNAME="so"
download
