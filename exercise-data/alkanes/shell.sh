#!/usr/bin/bash
#script to set up experimental directory structure
#list of made up variables - log_file, species, temp

log_file ="setup_log_make_this_a_really_long_complicated_name.txt"

echo "Experiment setup started: $(date)" > $log_file
echo "Experiment setup started: $(date)" 

for species in cubane ethane methane
do
	mkdir $species
	echo "Created $species directory" >> $log_file

	for temp in 25 30 37 40
	do 
		mkdir $species/$temp
		touch $species/$temp/experiment.sh
		echo "- Created $species/$temp/" >> $log_file
	done
done

echo "Setup completed: $(date)" >> $log_file
echo "Setup complete! Check $log_file for details."

