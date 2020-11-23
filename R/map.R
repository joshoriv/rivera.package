#' Generates map of specimen locality information
#' 
#' @param Longitude longitudinal coordinate (numeric)
#' @param Latitude latitudinal coordinate (numeric)
#' @param world the specific map used for referencing (graphic)
#' @param sirens siren specimen dataset
#' @importFrom dplyr select
#' @importFrom graphics points
#' @importFrom stats na.omit
#' @return map of specimen localities (graphic)
sirens_map <- function(sirens, Longitude, Latitude)
{sirens_map <- dplyr::select(sirens, Longitude, Latitude) %>% 
  na.omit()
assert_that(is.na(sirens_map))
world <- ne_countries(scale = "medium", returnclass = "sf")
ggplot(data = world) +
  geom_sf() +
  geom_point(data = sirens_map, mapping = aes(x = Longitude, y = Latitude), color = "blue") +
  coord_sf(xlim = c(-110, -75), ylim = c(22, 50), expand = FALSE)
return(map)
}

