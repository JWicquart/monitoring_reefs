# 1. Load packages ----

library(tidyverse)
library(sf)
sf_use_s2(FALSE) # Switch from S2 to GEOS

# 2. Load and transform Reefs at Risk (RAR) data ----

data_reefs <- read_sf("data/01_reefs-distribution-wri/reef_500_poly.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid()

# 3. Load and transform Marine Ecoregions of the World (MEOW) data ----

data_meow <- read_sf("data/02_marine-ecoregions-of-the-world/Marine_Ecoregions_Of_the_World__MEOW_.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid()

# 4. Check if the CRS transformation has worked ---

ggplot() +
  geom_sf(data = data_meow) +
  geom_sf(data = data_reefs, col = "red")

# 5. Make the join to estimate surface by ecoregion ----

data_surface <- st_intersection(data_reefs, data_meow) %>%  
  st_transform(crs = "ESRI:54001") %>% 
  st_make_valid() %>%  
  mutate(area = st_area(.)) %>% 
  group_by(ECOREGION, ECO_CODE_X) %>% 
  summarise(area = sum(area)) %>% 
  st_drop_geometry(.) %>% 
  mutate(area = as.numeric(area))

# 6. Export the data ----

save(data_surface, file = "data/04_reef-surface-by-ecoregion.RData")

# 7. Make the join to extract ecoregions with coral reefs ----

data_meowreefs <- left_join(data_surface, data_meow) %>% 
  st_as_sf()

# 8. Export the data ----

save(data_meowreefs, file = "data/04_meow-with-coral-reefs.RData")
