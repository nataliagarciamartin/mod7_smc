library(R.matlab)

Affy_2cells_Data <- readMat("Affy_2cells_Data.mat")
Affy_2cells_Data <- Affy_2cells_Data$Affy.2cells.Data

head(Affy_2cells_Data)
plot(Affy_2cells_Data[,1])
