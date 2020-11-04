#! /usr/bin/env bash

# YOU MUST INITIALIZE HERE YOUR R engine
module load R

current=`pwd`

# Define necessary paths
RESULTS_PATH="<PATH TO EXPERIMENTS FOLDER>" # Several folder will be created here

# Prepare experiment config
FCs='[2;3;4]'
PropDEG='[0.0;0.01;0.05;0.1]'
UPDOWNS='[0.5]' # Note: check 0 to be the same than 1
NGENES='[10000;20000;30000]'
REP='[3;5;10]'
N=100


# Prepare executio nresources
TIME_RESOURCE='2-00:00:00'
MEMORY_RESOURCE='5gb'
CORES='1'
QUEUE='cal'

# Launch experiment
variables=`echo -e "
\\$deg=$PropDEG,
\\$fc=$FCs,
\\$ngenes=$NGENES,
\\$rep=$REP,
\\$n=$N,
\\$root=$current,
\\$updowns=$UPDOWNS
" | tr -d [:space:]`
AutoFlow -w study_synth.af -o $RESULTS_PATH -V $variables $2 -m $MEMORY_RESOURCE -t $TIME_RESOURCE -n $QUEUE -c $CORES $1 -e #-b -C
