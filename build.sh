#!/bin/sh

tn=${1:-"core-hr"}/cursors

set -e

if [ -d "$tn" ]; then
	echo "$tn already exists. Not touching it."
	exit 0
fi

mkdir -p $tn

for n in data/*.cfg; do
	xcursorgen -p data $n $tn/$(basename $n .cfg)
done

ln -s $tn/cross $tn/tcross
ln -s $tn/cross $tn/target
ln -s $tn/arrow $tn/draft_large
ln -s $tn/arrow $tn/draft_small
ln -s $tn/sb_v_double_arrow $tn/double_arrow

# These names were snarfed from other cursor themes. Apparently
# some GUI toolkits use these. I don't know whether this is right, or
# where to find any proper info on this though
ln -s $tn/left_ptr_watch $tn/00000000000000020006000e7e9ffc3f
ln -s $tn/left_ptr_watch $tn/08e8e1c95fe2fc01f976f1e063a24ccd
ln -s $tn/left_ptr_watch $tn/3ecb610c1bf2410f44200f48c40d3599
ln -s $tn/question_arrow $tn/d9ce0ab605698f320427677b458ad60b
ln -s $tn/question_arrow $tn/5c6cd98b3f3ebcb1f9c7f1c204630408
ln -s $tn/arrow $tn/1081e37283d90000800003c07f3ef6bf
ln -s $tn/arrow $tn/3085a0e285430894940527032f8b26df
ln -s $tn/hand2 $tn/9d800788f1b08800ae810202380a0822
ln -s $tn/hand2 $tn/e29285e634086352946a0e7090d73106
ln -s $tn/hand2 $tn/pointer
ln -s $tn/closedhand $tn/9081237383d90e509aa00f00170e968f
ln -s $tn/closedhand $tn/4498f0e0c1937ffe01fd06f973665830
ln -s $tn/closedhand $tn/fcf21c00b30f7e3f83fe0dfd12e71cff
ln -s $tn/closedhand $tn/move
ln -s $tn/closedhand $tn/dnd-move
ln -s $tn/closedhand $tn/dnd-none
ln -s $tn/xterm $tn/ibeam 
ln -s $tn/watch $tn/wait
ln -s $tn/question_arrow $tn/help
ln -s $tn/left_ptr_watch $tn/half-busy

