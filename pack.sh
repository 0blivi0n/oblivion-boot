#!/bin/sh

VERSION=0.5.0

rm log/*
rm etc/persistence.conf

mkdir /tmp/oblivion

cp -R bin/ ebin/ lib/*/ebin/ lib/*/include/ lib/*/priv/ etc/ log /tmp/oblivion

PWD_DIR=`pwd`
cd /tmp

zip -r $PWD_DIR/oblivion-cache_${VERSION}.zip oblivion
rm -rf oblivion

cd $PWD_DIR