#' Chromosome information for homo sapiens
#'
#' @usage data(chr_info)
#' @docType data
#'
#' @format Data frame with one row per chromosome (23 auto, 2 sex, 1 mito), and
#' the following info:
#'
#' * circular: TRUE only for mito
#' * auto: TRUE only for auto
#' * sex: TRUE only for sex
#' * NCBI, UCSC, dbSNP, Ensembl: chromosome symbol for given database
#' * length: chromosome length
"chr_info"

#' Chromosome information for circos
#'
#' @usage data(circos_data)
#' @docType data
#' @source <https://bioconductor.org/packages/release/bioc/html/OmicCircos.html>
#'
#' @format List with three elements:
#'
#' * db: start and end angles for displaying chromosomes in a circos plot
#' * seg_name: chromosome names (1-22, X, Y)
#' * seg_num: number of chromosomes (24)
"circos_data"

#' Cytoband information
#'
#' @usage data(cytoband)
#' @docType data
#' @source <http://hgdownload.cse.ucsc.edu/goldenpath/hg19/database/cytoBand.txt.gz>
#'
#' @format Data frame with 5 columns:
#'
#' * chrom: chromosome name (1-22, X, Y)
#' * start: start position
#' * end: end position
#' * name: name of cytoband
#' * stain: giemsa stain
"cytoband_data"
