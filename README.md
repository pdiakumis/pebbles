# pebbles

This R package contains mini datasets for running tests and
examples in the [rock](https://github.com/umccr/rock) R package.

## Raw Data

* Whole exome sequencing data from the HCC2218
  breast carcinoma cell line (available via
  <https://github.com/Illumina/canvas#demo-tumor-normal-enrichment-workflow>)
  were analysed using the [bcbio](https://github.com/bcbio/bcbio-nextgen)
  toolkit and/or individual tools. Processed output from the following files is available:
    * [CNVkit](https://github.com/etal/cnvkit) CNV calls: "HCC2218_cnvkit-call.cns"
    * [FACETS](https://github.com/mskcc/facets) CNV calls: "HCC2218_facets_cncf.tsv"
    * [Manta](https://github.com/Illumina/manta) SV calls: "HCC2218_manta.vcf"
    * [PURPLE](https://github.com/hartwigmedical/hmftools/tree/master/purity-ploidy-estimator) CNV calls: "HCC2218_purple.cnv.tsv"
    * [TitanCNA](https://github.com/gavinha/TitanCNA) CNV calls: "HCC2218_titan.segs.tsv"


* HCC2218 BAF values from [AMBER](https://github.com/hartwigmedical/hmftools/tree/master/amber).

* AZ300 cancer gene panel.

* The above datasets can be accesed with
  `system.file("extdata", <file-name>, package = "pebbles")`.

## Exported Data

* `?pebbles::chr_info`
* `?pebbles::circos_data`

