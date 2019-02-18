if (!requireNamespace("BiocManager"))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install("affy")

library(affy)

# Import .CEL files as an AffyBatch; need .CEL files in current working directory
two_cell <- ReadAffy()

# Examine raw expression values

expr_two_cell <- exprs(two_cell)
head(expr_two_cell)

# Perform RMA

rma_two_cell <- rma(two_cell)

affy_two_cell <- exprs(rma_two_cell)
head(affy_two_cell)

library(R.matlab)

writeMat(con = "affy_two_cell.mat", affy_two_cell_data = affy_two_cell)
