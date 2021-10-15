#/usr/bin/env bash


VERSION=0.8.7-3360
EXTNAME=".dll" # dylib | so
FINALEXTNAME=".dll"

download(){
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/crypto$EXTNAME -O crypto$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/ipaddr$EXTNAME -O ipaddr$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/json1$EXTNAME -O json1$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/math$EXTNAME -O math$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/memstat$EXTNAME -O memstat$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/re$EXTNAME -O re$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/series$EXTNAME -O series$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/shawnw_math$EXTNAME -O shawnw_math$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/spellfix$EXTNAME -O spellfix$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/stats$EXTNAME -O stats$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/text$EXTNAME -O text$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/unicode$EXTNAME -O unicode$FINALEXTNAME
    wget https://github.com/mindreframer/sqlean/releases/download/$VERSION/vsv$EXTNAME -O vsv$FINALEXTNAME
}


# compiled extensions for Apple M1 (arm64) are handled locally in manual fashion for now

mkdir -p priv/darwin-amd64
pushd priv/darwin-amd64
rm *
EXTNAME=".dylib"
FINALEXTNAME=".dylib"
download


popd
mkdir -p priv/windows-amd64
pushd priv/windows-amd64
rm *
EXTNAME=".dll"
FINALEXTNAME=".dll"
download


popd
mkdir -p priv/windows-win32
pushd priv/windows-win32
rm *
EXTNAME="-win32.dll"
FINALEXTNAME=".dll"
download


popd
mkdir -p priv/linux-amd64
pushd priv/linux-amd64
rm *
EXTNAME=".so"
FINALEXTNAME=".so"
download
