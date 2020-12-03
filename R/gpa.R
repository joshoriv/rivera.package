#' Performs and visualizes Generalized Procrustes Analysis for shape data
#' 
#' @param sirens_dorsal siren specimen shape dataset
#' @importFrom geomorph gpagen
#' @return a vector containing the Centroid Size of the configurations (graphic)
#' 
gpa <- function(sirens_dorsal)
  {
  gpa <- gpagen(sirens_dorsal)
  assert_that(is.numerical(sirens_dorsal))
  plot(gpa)
  return(gpa)
  }