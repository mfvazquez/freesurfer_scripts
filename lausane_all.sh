#!/bin/bash
function start_job {
	echo "starting job $1" >> log.txt

	cd /media/ineco/FONDECYT/FMRI_ANALYSIS_FONDECYT/00_ALL/PIPELINE_FUN_ROSARIO/scripts
	/run_lausanne.sh $1 /media/ineco/8TB/SOFI/FONDECYT/Preprocesamiento_todos/FREESURFER/sin_lausanne

	echo "ending job $1" >> log.txt
}


for file in *.anat;
do
	filename="${file%.*}"
	start_job $filename &	
done

wait
echo "Done :)"