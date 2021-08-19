# 1. Load packages

library(tidyverse)
library(sf)
sf_use_s2(FALSE) # Switch from S2 to GEOS

# 2. Load and transform Reefs at Risk (RAR) data ----

data_rar <- read_sf("data/14_001_WCMC008_CoralReefs2018_v4_1/01_Data/WCMC008_CoralReef2018_Py_v4_1.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid() %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid() %>% 
  st_transform(crs = "ESRI:54001") %>% 
  st_make_valid()

# 3. Load and transform Veron ecoregions data ----

load("data/ecoregions.RData")

ecoregions <- ecoregions %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid() %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid() %>% 
  st_transform(crs = "ESRI:54001") %>% 
  st_make_valid()

# 4. Check if the CRS transformation has worked ---

ggplot() +
  geom_sf(data = ecoregions) +
  geom_sf(data = data_rar, col = "red")

# 5. Make the join ----

data_joined <- st_intersection(data_rar, ecoregions) %>% 
  mutate(area = st_area(.)) %>% 
  group_by(Ecoregion) %>% 
  summarise(area = sum(area)) %>% 
  st_drop_geometry(.)

# 6. Export the data ----

save(data_joined, file = "data/01_reef-surfaces-by-ecoregion.RData")
