#!/usr/bin/env bash

degenes_Hunter.R -p 0.05 -m WDEL -c 4 -f 1 --WGCNA_mergecutHeight 0.15 --WGCNA_min_genes_cluster 15 --WGCNA_detectcutHeight 0.995 -r 1.5 -S genotype,chaperone_presence,individual -t CTL_vs_MUT_target.txt -v chaperone_presence -i count_table.txt -o CTL_vs_MUT

functional_Hunter.R -f KgR -G MBC -A o -P 0.1 -m Human -i CTL_vs_MUT -t E -o functional_enrichment
