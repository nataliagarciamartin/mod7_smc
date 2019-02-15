source('http://bioconductor.org/biocLite.R')

library(BiocInstaller)

biocUpdatePackages("BiocGenerics")

biocLite('CellMix', siteRepos=c('http://web.cbio.uct.ac.za/~renaud/CRAN')) 
# Say no to package updates; ignore biocLite deprecated message
