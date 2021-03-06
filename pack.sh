#!/bin/sh

VERSION=`./vsn.escript src/oblivion_boot.app.src`

mkdir /tmp/oblivion

cp -R * /tmp/oblivion

PWD_DIR=`pwd`
cd /tmp/oblivion

rm -f log/*
rm -f etc/persistence.data

cd ..

zip -r $PWD_DIR/oblivion-cache_${VERSION}.zip oblivion/bin oblivion/ebin oblivion/etc oblivion/log oblivion/lib/*/ebin oblivion/lib/*/include oblivion/lib/*/priv

rm -rf oblivion

cd $PWD_DIR
