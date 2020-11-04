#! /usr/bin/env Rscript

#' @author Fernando Moreno Jabato <jabato(at)uma(dot)es>

#############################################
### CONFIGURE 
#############################################

#Loading libraries
suppressPackageStartupMessages(library(optparse)) 
suppressPackageStartupMessages(require(knitr))


option_list <- list(
  make_option(c("-i", "--predictions"), type="character", default = NULL,
    help="DEGenesHunter expression results table file"),
  make_option(c("-V", "--votes"), type="character", default = NULL,
    help="[OPTIONAL] DEGenesHunter votes system prediction results table file")
)

opt <- parse_args(OptionParser(option_list=option_list))


#############################################
### LOAD & PREPARE 
#############################################

if(!is.null(opt$predictions)){
	exp_res <- read.table(file = opt$predictions, sep = "\t", header = FALSE, stringsAsFactors = FALSE)
	colnames(exp_res) <- c("Sample","Replicates","Genes","DEGprop","Max_FC","Min_FC","UpProp","Package","AUC")
}else{
	stop("Experiemtns results file (-i) is mandatory")
}

if(!is.null(opt$votes)){
	vot_res <- read.table(file = opt$votes, sep = "\t", header = FALSE, stringsAsFactors = FALSE)
	colnames(vot_res) <- c("Sample","Replicates","Genes","DEGprop","Max_FC","Min_FC","UpProp","Cut","TP","FP","TN","FN","ACC","Precision","Recall","Specificity","FMeasure")	
}


#############################################
### RENDER
#############################################
rmarkdown::render('synth_exp_results.Rmd', output_file = "synth_results.html", intermediates_dir = "./")
# rmarkdown::render('synth_circosTest.Rmd', output_file = "synth_TEST.html", intermediates_dir = "./")
