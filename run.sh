#! /bin/bash

set -e

VERSION=1

if [ -z ${1+x} ];
then
 echo "Binutils repository provider failed; first parameter must be output directory"
 exit 1
fi

OUTPUTDIR=$1/binutils-repository-provider/$VERSION

if [ -d $OUTPUTDIR ];
then
 echo "Binutils repository already provided at $OUTPUTDIR"
 echo "Doing nothing"
 exit 0
fi

mkdir -p $OUTPUTDIR

git clone git://sourceware.org/git/binutils-gdb.git $OUTPUTDIR

exit 0
