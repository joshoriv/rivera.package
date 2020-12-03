#' Performs and visualizes a Principal Components Analysis for shape data
#' 
#' @param gpa General Procrustes Analysis for shape data
#' @importFrom geomorph gm.prcomp
#' @return PCA graph for shape data (graph)
#' 
pca <- function(gpa)
{
  pca <- gm.prcomp(gpa$coords)
  summary(pca)
  plot(pca, main = "PCA")
  return(pca)
}