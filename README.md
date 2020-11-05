# DEgenesHunterSynthetic

This repository includes code to generate synthtetic results published in paper "Differential expression, co-expression and functional analysis of RNA-seq data using the DEgenes Hunter suite and its applicability to rare disease".

Also, supplementary files for this paper are stored here.

# Synthetic Experiments
In order to replicate these experiments you must:

1. Install and configure your R environment as is explained in https://github.com/seoanezonjic/DEgenesHunter
2. Configure launch.sh to include your environment load and your experiments results folder
3. Execute launch.sh

Once execution has finished:

4. Configure get_results.sh to include your environment load and your experiments results folder.
5. Execute get_results.sh

A new HTML file with the results report must has been generated

**Important:** this scripts uses Autoflow, be sure to has it installed in your system (https://github.com/seoanezonjic/autoflow)

# Lafora / PMM2
In order to replicate these experiment (Lafora or PMM2) you must:

1. Install and configure your R environment as is explained in https://github.com/seoanezonjic/DEgenesHunter
2. Execute file launch_DEgenesHunter.sh stored in specific folder.

# Spike-ins 
In order to replicate these experiments you must:

1. Install and configure your R environment as is explained in https://github.com/seoanezonjic/DEgenesHunter
2. Configure your download folder and your JSON credential in ncbi_sra_file_downloader.sh. If you don't habe a NCBI credential, check this link https://www.ncbi.nlm.nih.gov/home/develop/https-guidance/
3. Once files have been downloaded, execute conversion configuring variables in conversion_loop.sh and execute.
4. At this point, you must use a clean&map program to transform fastq files into count tables.
5. Use count tables obtained to execute DEgenes Hunter expression analysis as done in Lafora or PMM2 but changing input file.