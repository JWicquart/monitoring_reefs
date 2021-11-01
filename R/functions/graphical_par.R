# 1. Required packages ----

require(extrafont) # For fonts

# 2. Set the default font family ----

font_choose_graph <- "LM Sans 10"
font_choose_map <- "LM Sans 10"

# 3. Set the colors ----

col_fill_graph <- "#89C4F4"
col_color_graph <- "#446CB3"
col_fill_map <- "#f2caae"
col_color_map <- "#888888"
col_background_map <- "#e4f1fe"
# Derived from RColorBrewer "RdYlBu" but with another yellow
palette_5cols <- c("#2c7bb6", "#91bfdb", "#f7ca18", "#fc8d59", "#d73027")

# 4. Define a common crs ----

crs_selected <- "+proj=eqearth"
