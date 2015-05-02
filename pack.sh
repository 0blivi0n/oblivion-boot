#!/bin/sh

VERSION=0.5.0

mkdir /tmp/oblivion

cp -R * /tmp/oblivion

PWD_DIR=`pwd`
cd /tmp/oblivion

rm log/*
rm etc/persistence.conf

cd ..

zip -r $PWD_DIR/oblivion-cache_${VERSION}.zip oblivion/bin oblivion/ebin oblivion/etc oblivion/log oblivion/lib/*/ebin oblivion/lib/*/include oblivion/lib/*/priv

rm -rf oblivion

cd $PWD_DIR
