if (!requireNamespace("BiocManager"))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install("affy")

library(affy)

# Import .CEL files as an AffyBatch; need .CEL files in current working directory
three_cell <- ReadAffy()

# Examine raw values
expr_three_cell <- exprs(three_cell)

# Perform rma
rma_three_cell <- affy::rma(three_cell)

gse19830 <- exprs(rma_three_cell)
head(gse19830)

gse19830 <- 2^gse19830
head(gse19830)

library(R.matlab)

writeMat(con = "gse19830.mat", gse19830_data = gse19830)
