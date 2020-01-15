#!/bin/bash
function start_job {
	echo "starting job $1" >> log.txt

	export SUBJECTS_DIR=~/media/ineco/FONDECYT/FMRI_ANALYSIS_FONDECYT/00_ALL/FS/sin_lausanne
	cd /media/ineco/FONDECYT/FMRI_ANALYSIS_FONDECYT/00_ALL/PIPELINE_FUN_ROSARIO/scripts
	/run_lausanne.sh $1 $2

	echo "ending job $1" >> log.txt
}


anat_dir=/media/ineco/8TB/SOFI/FONDECYT/Preprocesamiento_todos/FREESURFER/sin_lausanne
for file in ${anat_dir}/*.anat;
do
	filename="${file%.*}"
	start_job $filename $anat_dir &	
done

wait
echo "Done :)"