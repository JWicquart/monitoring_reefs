# 1. Required packages ----

require(extrafont) # For fonts

# 2. Set the default font family ----

windowsFonts("Open Sans" = windowsFont("Open Sans"))

font_choose_graph <- "Open Sans"
font_choose_map <- "Open Sans"

# 3. Set the colors ----

col_color_map <- "#888888"
col_background_map <- "white"
col_background_meow <- "#f8f8f8"

# Derived from RColorBrewer "RdYlBu" palette but with another yellow
palette_5cols <- c("#2c7bb6", "#91bfdb", "#f7ca18", "#fc8d59", "#d73027")

# 4. Define a common crs ----

crs_selected <- "+proj=eqc +lat_ts=0 +lat_0=0 +lon_0=160 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs"
