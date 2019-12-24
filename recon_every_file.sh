#!/bin/bash
function start_job {
	echo "starting job $2" >> log.txt
	recon-all -i $1 -subjid $2 -all
	echo "ending job $2" >> log.txt
}

for file in *;
do
	filename="${file%.*}"
	start_job $file $filename &
done

wait
echo "Done :)"