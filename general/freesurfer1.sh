#! /bin/bash

export FREESURFER_HOME=/usr/local/freesurfer && source $FREESURFER_HOME/SetUpFreeSurfer.sh

for i in $(ls)
do
	sudo chmod -R 777 $i;
	recon-all -s $i -brainstem-structures
done 
