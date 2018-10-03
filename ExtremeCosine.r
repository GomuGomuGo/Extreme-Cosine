## Load Required Packages
library("qlcMatrix")
library("Matrix")

## Function to Calculate Extreme Cosine Similarity
xTremeCosine <- function(aMatrix){ 
  ## Retain Only Top 100 and Bottom 100 ranked elements in a Matrix
  indices <- which(aMatrix != 0, arr.ind=TRUE)
  ranks = ave(-aMatrix[indices], indices[,2], FUN=rank)
  keep = ave(-aMatrix[indices], indices[,2], FUN=function(elt) {
    elt = rank(elt)
    (elt > 100) & (elt <= length(elt) - 100)
  }) == 0
  indices = indices[keep,]
  similaritysparseMatrix = sparseMatrix(indices[,1], indices[,2], x=aMatrix[indices])
  ## Calculate CosineSimilarity
  similarityMatrix = cosSparse(t(similaritysparseMatrix))
  row.names(similarityMatrix)  = row.names(aMatrix)
  colnames(similarityMatrix) = row.names(aMatrix)
  return(similarityMatrix)
} 
