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

palette_duration <- c("1" = "#2abb9b",
                      "2-5" = "#3498db",
                      "6-10" = "#be90d4",
                      "11-15" = "#f4b350",
                      ">15" = "#e74c3c")

palette_fill <- c("#2c82c9", "#f5ab35", "#cf000f")

# 4. Define a common crs ----

crs_selected <- "+proj=eqearth"
