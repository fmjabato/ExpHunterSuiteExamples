# DEgenesHunterSynthetic

This repository includes code to generate synthtetic results published in paper "Differential expression, co-expression and functional analysis of RNA-seq data using the DEgenes Hunter suite and its applicability to rare disease".

Also, supplementary files for this paper are stored here.

# Usage
In order to replicate these experiments you must:

1. Install and configure your R environment as is explained in https://github.com/seoanezonjic/DEgenesHunter
2. Configure launch.sh to include your environment load and your experiments results folder
3. Execute launch.sh

Once execution has finished:

4. Configure get_results.sh to include your environment load and your experiments results folder.
5. Execute get_results.sh

A new HTML file with the results report must has been generated

**Important:** this scripts uses Autoflow, be sure to has it installed in your system (https://github.com/seoanezonjic/autoflow)
