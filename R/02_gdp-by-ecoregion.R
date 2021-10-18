# 1. Load packages ----

library(tidyverse) # Core tidyverse packages
library(sf)
sf_use_s2(FALSE) # Switch from S2 to GEOS

# 2. Load data ----

# 2.1 EEZ --

data_eez <- read_sf("data/World_EEZ_v11_20191118/eez_v11.shp") %>% 
  mutate(SOVEREIGN1 = case_when(TERRITORY1 == "Chagos Archipelago" ~ "United Kingdom",
                                TRUE ~ SOVEREIGN1))
# 2.2 GDP --

data_gdp <- read.csv("data/GDP.csv") %>% 
  select(X.1, X.2) %>% 
  slice(5:210) %>% 
  rename(SOVEREIGN1 = X.1, GDP = X.2) %>% 
  mutate(GDP = str_remove_all(GDP, ","),
         GDP = as.numeric(GDP)) %>% 
  mutate(SOVEREIGN1 = str_replace_all(SOVEREIGN1, c("Comoros" = "Comores",
                                                    "Mauritius" = "Republic of Mauritius",
                                                    "Timor-Leste" = "East Timor",
                                                    "Bahamas, The" = "Bahamas",                         
                                                    "St. Kitts and Nevis" = "Saint Kitts and Nevis",
                                                    "St. Lucia" = "Saint Lucia",
                                                    "St. Vincent and the Grenadines" = "Saint Vincent and the Grenadines",
                                                    #"" = "Venezuela",       
                                                    #"" = "Eritrea",                         
                                                    "Egypt, Arab Rep." = "Egypt",                            
                                                    "Iran, Islamic Rep." = "Iran",                             
                                                    "Yemen, Rep." = "Yemen",                            
                                                    "SÃ£o TomÃ© and Principe" = "Sao Tome and Principe",           
                                                    #"" = "Taiwan",                           
                                                    #"" = "South Korea",                      
                                                    "Brunei Darussalam" = "Brunei",
                                                    "Micronesia, Fed. Sts." = "Micronesia",                      
                                                    "Somalia" = "Federal Republic of Somalia")))

# 2.3 Marine Ecoregions of the World (MEOW) with coral reefs --

load("data/04_meow-with-coral-reefs.RData")

# 3. Join EEZ and GDP ----

data_eez <- left_join(data_eez, data_gdp) %>% 
  st_as_sf()

# 4. Spatial join between MEOW and EEZ ----

data_meowgdp <- st_join(data_meowreefs, data_eez) %>% 
  group_by(ECOREGION) %>% 
  summarise(GDP = median(GDP))

# 5. Export the data ----

save(data_meowgdp, file = "data/xx_meow-with-coral-reefs-gdp.RData")

