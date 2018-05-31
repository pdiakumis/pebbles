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

#' Manta VCF for sample HCC2218
#'
#' @usage prep_manta_vcf("HCC2218_manta.vcf")
#' @docType data
#' @source <https://github.com/Illumina/manta>
#'
#' @format VCF file output by Manta for sample HCC2218
#'   (see https://github.com/bcbio/bcbio-nextgen/blob/master/config/examples/HCC2218-sv-getdata.sh for raw data retrieval)
#'
"HCC2218_manta.vcf"

#' FACETS copy number calls
#'
#' @usage rock::prep_facets_seg("HCC2218_facets_cncf.tsv")
#' @docType data
#' @source <https://github.com/mskcc/facets>
#'
#' @format Copy number calls output by FACETS for sample HCC2218
#'   (see https://github.com/bcbio/bcbio-nextgen/blob/master/config/examples/HCC2218-sv-getdata.sh for raw data retrieval)
#'
"HCC2218_facets_cncf.tsv"

#' CNVkit copy number calls
#'
#' @usage rock::prep_cnvkit_seg("HCC2218_cnvkit-call.cns")
#' @docType data
#' @source <https://github.com/etal/cnvkit>
#'
#' @format Copy number calls output by CNVkit for sample HCC2218
#'   (see https://github.com/bcbio/bcbio-nextgen/blob/master/config/examples/HCC2218-sv-getdata.sh for raw data retrieval)
#'
"HCC2218_cnvkit-call.cns"
