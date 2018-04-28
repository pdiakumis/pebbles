#' umccr.facets.gc: GC content for hg19 and hg38
#'
#' NOTE: This is a modified version of https://github.com/veseshan/pctGCdata,
#' where I've simply deleted the mouse and hg18 genomes for convenience and speed.
#'
#' This a data package that gives the GC percentage of human genome for
#' builds hg19 & hg38. The data object, named after the build, is a list with each
#' element giving a vector of values for a chromosome. The GC percentage is the proportion
#' of nucleotides that are GC in a 1000 base window. The windows begin with
#' bases 1-1000 and slide 100 bases at a time.
#'
#' @docType package
#' @name umccr.facets.gc-package
NULL

.onAttach <- function(libname, pkgname) {
    packageStartupMessage("Facets GC content coming!")
}
