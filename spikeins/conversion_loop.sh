# /usr/bin/env bash

# HERE YOU MUST LOAD SRA Toolkit to download the data
module load sra_toolkit

# CONFIGURE NECESSARY VARIABLES
SRA_IDS_FILE='sra_runs.txt'
SRA_DOWNLOADED_FILES='' # Folder with downloaded SRA files => Output of ncbi_sra_file_downloader.sh
OUTPUT_FOLDER='fastq' # Folder with conversion to Fastq 

# Example:
for i in `cat SRA_IDS_FILE`
do
   sbatch conversion_command.sh $i $SRA_DOWNLOADED_FILES $OUTPUT_FOLDER
done
