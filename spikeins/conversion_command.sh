#!/usr/bin/env bash
#SBATCH --cpu=1
#SBATCH --mem=20gb
#SBATCH --time=12:00:00
module load sra_toolkit
fastq-dump --split-files --gzip --origfmt $4 --outdir $3 $2"/"$1".sra"
