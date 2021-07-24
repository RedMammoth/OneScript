#!/bin/bash

THISDIR=$(pwd)

cd $THISDIR/builders/deb
docker build -t dxxwarlockxxb/onescript-builder:deb .

cd $THISDIR/builders/rpm
docker build -t dxxwarlockxxb/onescript-builder:rpm .

cd $THISDIR
docker build -t dxxwarlockxxb/onescript-builder:gcc -f $THISDIR/builders/nativeapi/Dockerfile ..
