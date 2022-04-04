# 1. Load packages ----

library(tidyverse)
library(sf)
sf_use_s2(FALSE) # Switch from S2 to GEOS

# 2. Load and transform UNEP-WCMC data ----

data_reefs <- read_sf("data/01_reefs-distribution-unep-wcmc/01_Data/WCMC008_CoralReef2018_Py_v4_1.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid()

# 3. Load and transform Marine Ecoregions of the World (MEOW) data ----

data_meow <- read_sf("data/02_marine-ecoregions-of-the-world/Marine_Ecoregions_Of_the_World__MEOW_.shp") %>% 
  st_transform(crs = 4326) %>% 
  st_wrap_dateline(options = c("WRAPDATELINE=YES")) %>% 
  st_make_valid()

# 4. Load and transform background maps ----

data_map <- read_sf("data/00_natural-earth-data/ne_10m_land/ne_10m_land.shp") %>% 
  st_transform(crs = 4326)

# 5. Extract MEOW containing coral reefs ----

data_meowreefs <- st_filter(data_meow, data_reefs, join = st_intersects)

# 6. Produce maps to check ----

## 6.1 Global map -- 

map_checking <- ggplot() +
  geom_sf(data = data_meowreefs, fill = "lightblue", alpha = 0.3) +
  geom_sf(data = data_map)

ggsave("figs/03_meow-with-reefs_global.png", map_checking)

## 6.2 Australia --

map_checking <- ggplot() +
  geom_sf(data = data_meowreefs, fill = "lightblue", alpha = 0.3) +
  geom_sf(data = data_map) +
  geom_sf(data = data_reefs, col = "red") +
  coord_sf(xlim = c(103, 168), ylim = c(-45, -6))

ggsave("figs/03_meow-with-reefs_australia.png", map_checking)

## 6.3 Brazil --

map_checking <- ggplot() +
  geom_sf(data = data_meowreefs, fill = "lightblue", alpha = 0.3) +
  geom_sf(data = data_map) +
  geom_sf(data = data_reefs, col = "red") +
  coord_sf(xlim = c(-65, -25), ylim = c(-30, 15))

ggsave("figs/03_meow-with-reefs_brazil.png", map_checking)

# 7. Make the join to estimate surface by ecoregion ----

data_surface <- st_intersection(data_reefs, data_meow) %>%  
  st_transform(crs = "ESRI:54001") %>% 
  st_make_valid() %>%  
  mutate(area = st_area(.)) %>% 
  group_by(ECOREGION, ECO_CODE_X) %>% 
  summarise(area = sum(area)) %>% 
  st_drop_geometry(.) %>% 
  mutate(area = as.numeric(area)) %>% 
  # Remove ecoregions containing not "true" coral reefs
  filter(!(ECO_CODE_X %in% c(71, 72, 77, 203, 209)))

# 8. Export the data ----

save(data_surface, file = "data/04_reef-surface-by-ecoregion.RData")

# 9. Make the join to extract ecoregions with coral reefs ----

data_meowreefs <- left_join(data_surface, data_meow) %>% 
  st_as_sf()

# 10. Export the data ----

save(data_meowreefs, file = "data/04_meow-with-coral-reefs.RData")
