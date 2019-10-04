#!/bin/sh

echo from $0 making missing var log folder in $1/var/log
mkdir -p $1/var/log
echo resize >> $1/etc/profile
DIR=`dirname $0`
DIR=`realpath $DIR`
cp $DIR/wpa_supplicant.conf $1/etc
cp $DIR/interfaces $1/etc/network
exit $?
