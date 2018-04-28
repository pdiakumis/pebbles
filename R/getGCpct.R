#' Get GC percentages at specific genomic positions
#'
#' Gets GC percentages at specific genomic positions
#' Computes the GC percentages for a set of genomic positions along a
#' chromosome. The GC percentage is the proportion of GC nucleotides in a
#' 1000 base window centered at the genomic position.
#'
#'
#' @param chrom Chromosome of interest. Only one chromosome can be
#'   specified at a time. For humans it can be 1-22, X(23), Y(24) or MT(25).
#' @param pos Genomic positions in the chromosome of interest
#' @param gbuild Genome build. Available builds are hg19 and hg38 for humans.
#' @return A vector of GC percentage values corresponding to the genomic positions.
#' @examples
#' \dontrun{
#' pos <- sort(sample(249250000, 10))
#' getGCpct(1, pos)
#' getGCpct(1, pos, "hg19")
#' }
#' @export
getGCpct <- function(chrom, pos, gbuild=c("hg19", "hg38")) {
    gbuild <- match.arg(gbuild)
    # check that the chromosome is valid
    if (length(chrom) > 1) {
        warning("only the first element of chrom is used")
        chrom <- chrom[1]
    }
    if (gbuild %in% c("hg19", "hg38")) {
        if (is.character(chrom)) {
            chrom <- match(chrom, c(1:22, "X", "Y", "MT"))
        } else {
            chrom <- match(chrom, 1:25)
        }
    } else {
        stop("Not hg19 or hg38... Something has gone wrong!")
    }
    if (is.na(chrom)) stop("incorrect chrom sepcification")
    # if the needed genome build is in workspace set it to gcpctdb
    gcpctdb <- get(gbuild, pos="package:gc.hs")
    # gc percentages of specified chromosome
    gcpct <- gcpctdb[[chrom]]
    # left and right intervals for the genomic positions
    jleft <- ceiling((pos-499.5)/100)
    jright <- ceiling((pos-399.5)/100)
    # make sure that indices are valid
    jleft[jleft < 1] <- 1
    jleft[jleft > length(gcpct)] <- length(gcpct)
    jright[jright < 1] <- 1
    jright[jright > length(gcpct)] <- length(gcpct)
    # difference between pos and midpoints
    jj <- 100 - (pos %% 100)
    # linear combination of the two GC percentages
    round((jj*gcpct[jleft] + (100-jj)*gcpct[jright])/100, digits=3)
}
