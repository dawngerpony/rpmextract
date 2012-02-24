#!/bin/sh
rpm=$1
outfile=${rpm##*/}
fulloutfile=/tmp/$outfile
echo $outfile
wget -q -P /tmp $rpm
ls -l $fulloutfile
outdir=$(basename $outfile .rpm)
echo $outdir
mkdir $outdir
cd $outdir
rpm2cpio $fulloutfile | cpio  -idmv
rm $fulloutfile
