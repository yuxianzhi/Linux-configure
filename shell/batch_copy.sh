#!/bin/bash
#find all the jar file in $DIRNAMESRC directory
#copy these file to the $DIRNAMEDEST dirctory


export FILENAME=jar.file
export DIRNAMESRC=/home/users/yuxianzhi/lib/lucene/lucene-6.5.0
export DIRNAMEDEST=./


find $DIRNAME -name "*.jar" &> $FILENAME

cat $FILENAME | while read LINE
do
#	echo $LINE
	cp $LINE $DIRNAMEDEST
done

rm $FILENAME
