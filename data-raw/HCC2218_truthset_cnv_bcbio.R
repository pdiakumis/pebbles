# Truth set for HCC2218 CNVs. Data downloaded
# via https://github.com/bcbio/bcbio-nextgen/blob/3924a6340f70256fe1e08d67341c2cb1fa22a5f7/config/examples/HCC2218-sv-getdata.sh

require(vcfR)

temp <- tempfile()
download.file("https://s3.amazonaws.com/bcbio/HCC2218/HCC2218Truth-clean-prep.vcf.gz", destfile = temp)
vcf <- vcfR::read.vcfR(temp)

DF <- data.frame(chrom = as.character(getCHROM(vcf)),
                 start = as.integer(getPOS(vcf)),
                 end = as.integer(extract.info(vcf, "END")),
                 tot_cn = as.integer(extract.info(vcf, "CN")),
                 stringsAsFactors = FALSE)

write.table(DF, file = "inst/extdata/HCC2218_truthset_cnv_bcbio.tsv", quote = FALSE, sep = "\t", row.names = FALSE)
