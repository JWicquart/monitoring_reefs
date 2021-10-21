# 1. Load packages ----

library(tidyverse) # Core tidyverse packages
library(raster)
library(sp)
library(sf)
sf_use_s2(FALSE) # Switch from S2 to GEOS

# 2. Load data ----

# 2.1 Coral distribution --

data_coral <- read_sf("data/01_reefs-distribution-wri/reef_500_poly.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES"))

# 2.2 Human population density --

data_pop <- raster("data/gpw-v4-population-density-rev11_2020_2pt5_min_tif/gpw_v4_population_density_rev11_2020_2pt5_min.tif")

# 2.3 Marine Ecoregions of the World (MEOW) with coral reefs --

load("data/04_meow-with-coral-reefs.RData")

data_meowreefs <- as_Spatial(data_meowreefs)

# 3. Extract mean human population density ----

data_pop <- raster::extract(data_pop, data_meowreefs, fun = sum, na.rm = TRUE, sp = TRUE)

data_meowpop <- as_tibble(data_pop@data) %>% 
  rename(population = gpw_v4_population_density_rev11_2020_2pt5_min) %>% 
  dplyr::select(ECOREGION, population) %>% 
  mutate(population = ifelse(ECOREGION == "Clipperton", 0, population)) %>% 
  mutate_at("population", ~replace(., is.nan(.), 0))

# 4. Export the data ----

save(data_meowpop, file = "data/04_meow-population.RData")
