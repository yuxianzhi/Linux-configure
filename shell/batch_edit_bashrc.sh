#!/bin/bash
#find the jar file $1 directory
#and add the all jar file path to the envoriment path $2


export DIRNAME=$1
export FILENAME=file.txt




find $DIRNAME -name "*.jar" &> $FILENAME
export VAR_TEMP=""

while read LINE
do
#    echo $LINE
    export VAR_TEMP="$VAR_TEMP:$DIRNAME/$LINE"
done < $FILENAME

rm $FILENAME

echo "envoriment variable: $2"
echo "append: $VAR_TEMP"
content=`eval echo '$'"$2"`
echo "export $2="$VAR_TEMP:$content"" >> ~/.bashrc

