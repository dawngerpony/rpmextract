#!/bin/sh

function usage() {
  echo "Usage: $0 <URL>"
  exit 1
}

if [ $# -ne 1 ]; then
  echo "Error: no URL specified!"
  usage
fi

rpmurl=$1
outfile=${rpmurl##*/}
fulloutfile=/tmp/$outfile

if [ `echo $rpm | sed s/http//`]; then
  echo "cool"
fi

echo "Retrieving $outfile from $rpmurl using wget, storing in $fulloutfile..."
wget -q -P /tmp $rpmurl
ls -l $fulloutfile

if ! [ -f $fulloutfile ]; then
  echo "Error: local file not detected after download"
  exit 1
fi

outdir=$(basename $outfile .rpm)
echo $outdir
mkdir $outdir
cd $outdir
rpm2cpio $fulloutfile | cpio  -idmv
rm $fulloutfile
