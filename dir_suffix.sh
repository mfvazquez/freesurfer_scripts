#!/bin/bash
SUFIX="parax"
EXCLUDE="fsaverage"
for file in *;
do
	if test -d $file && [ "$file" != $EXCLUDE ] && [ "${file: -5}" != $SUFIX ]
    then
      mv $file "${file}$SUFIX"
      # echo "renaming $file dir to ${file}parax"
    fi
done

wait
echo "Done :)"