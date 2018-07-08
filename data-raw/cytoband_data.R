require(devtools)
require(readr)

tmp <- tempfile(fileext = "txt.gz")
download.file("http://hgdownload.cse.ucsc.edu/goldenpath/hg19/database/cytoBand.txt.gz",
              destfile = tmp)
cytoband_data <- readr::read_tsv(tmp,
                      col_names = c("chrom", "start", "end", "name", "stain"),
                      col_types = "ciicc")

devtools::use_data(cytoband_data)
