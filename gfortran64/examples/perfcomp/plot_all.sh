#!/bin/sh

cd ../performance
for i in $(ls *.res* | sed 's,res-[^ ]*,res,g'|sort -u); do
	(cd ../perfcomp; ./plot_one.sh $i; )
done

