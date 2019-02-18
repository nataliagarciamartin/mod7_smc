if (!requireNamespace("BiocManager"))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install("affy")

library(affy)

# Import .CEL files as an AffyBatch; need .CEL files in current working directory
three_cell <- ReadAffy()

three_cell <- rma(three_cell)

gse19830 <- exprs(three_cell)
head(gse19830)

library(R.matlab)

writeMat(con = "gse19830.mat", gse19830_data = gse19830)
