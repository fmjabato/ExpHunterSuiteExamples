#! /usr/bin/env bash
module load R


# Define necessary paths
RESULTS_PATH="<PATH TO EXPERIMENTS FOLDER>"

rm experiments_aucs
rm votesSystem_measures
# Per each result folder
for dres in $RESULTS_PATH/*/ ; do
	# Obtain experiment info
	EXP_CONFIG=`tail $dres'metrics' -n +2`
	# Obtain experiments AUC result
	awk -vconfigexp="$EXP_CONFIG" 'BEGIN{IFS="\t";OFS="\t"}{if($3 == "auc" && $2 == "All") print configexp,$1,$4}' $dres'packages_measures' >> experiments_aucs
	# Obtain experiments (votes system) measures
	cat $dres'votesSystem_measures' >> votesSystem_measures
done

# Render results
./render_results.R -i experiments_aucs_fixed -V votesSystem_measures_fixed
