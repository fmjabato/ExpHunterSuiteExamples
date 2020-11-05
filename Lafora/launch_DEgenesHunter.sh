degenes_Hunter.R -p 0.05 -m WDELP -c 3 -f 1 --WGCNA_mergecutHeight 0.1 --WGCNA_min_genes_cluster 15 --WGCNA_detectcutHeight 0.995 -S group -N WB_Lcn2_brain,WB_Cxcl10_brain,WB_Ccl5_brain,qPCR_Lcn2,qPCR_Mmp3,qPCR_Cxcl10,qPCR_H2-M2,qPCR_C3,qPCR_Ccl2,qPCR_Ccl5,qPCR_Wisp2,qPCR_Ccl12,qPCR_Glra2,qPCR_Btg2,qPCR_Fos,qPCR_Nsun3 -t ctrl_vs_mut_target.txt -i count_data.txt -o ctrl_vs_mut

functional_Hunter.R -f KgR -G MBC -A o -P 0.1 -m Mouse -i ctrl_vs_mut -t E -c 6 -o functional_enrichment
