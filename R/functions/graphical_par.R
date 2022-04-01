# 1. Required packages ----

require(extrafont) # For fonts

# 2. Set the default font family ----

windowsFonts("Open Sans" = windowsFont("Open Sans"))

font_choose_graph <- "Open Sans"
font_choose_map <- "Open Sans"

# 3. Set the colors ----

col_fill_map <- "#f2caae"
col_color_map <- "#888888"
col_background_map <- "#e4f1fe"

# 4. Define a common crs ----

crs_selected <- "+proj=eqearth"
