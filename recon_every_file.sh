#!/bin/bash
for file in *.nii;
do
	filename="${file%.*}"
	recon-all -i $file -subjid $filename -all &
done

wait
echo "Done :)"