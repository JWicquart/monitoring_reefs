# **Coral reefs benthic monitoring: evolution, potential gaps and recommendations**


**This repository contains code associated to the article:**

Wicquart, J., [...] Planes, S. (2022). Coral reefs benthic monitoring: evolution, potential gaps and recommendations. _in prep_.


## 1. How to download this project?

On the project main page on GitHub, click on the green button `Code` and then click on `Download ZIP`

## 2. Context

*[To be completed]*

## 3. Description of the project

### 3.1 Project organization

* :open_file_folder: `R`
  + :open_file_folder: `functions` Functions used in the two main scripts
    - `graphical_par.R` Graphical parameters
    - `theme_graph.R` Theme for graphs
    - `theme_map.R` Theme for maps (primary)
    - `theme_map2.R` Theme for maps (secondary)
  + `01_reefs-ecoregion.R` Filter ecoregions containing coral reefs
  + `02_analysis.Rmd` Main analysis script

### 3.2 Data description

Four datasets were used for the analyses:

* :earth_africa: **-** Base map datasets downloaded on [Natural Earth Data](https://www.naturalearthdata.com/downloads/10m-physical-vectors/).

* :globe_with_meridians: **-** Marine Ecoregions of the World (MEOW) dataset from [Spalding *et al*, 2007](https://academic.oup.com/bioscience/article/57/7/573/238419).

* :world_map:	**-** Distribution of coral reefs of the world from [UNEP-WCMC](https://data.unep-wcmc.org/datasets/1).

* :diving_mask:	**-** Synthetic dataset used for the [*Status of Coral Reefs of the World: 2020*](https://gcrmn.net/2020-report/) report.

## 4. How to report issues?

Please report any bugs or issues [HERE](https://github.com/JWicquart/monitoring_reefs/issues).


## 5. Reproducibility parameters

```R
R version 4.1.1 (2021-08-10)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 18363)

Matrix products: default

locale:
[1] LC_COLLATE=French_France.1252  LC_CTYPE=French_France.1252   
[3] LC_MONETARY=French_France.1252 LC_NUMERIC=C                  
[5] LC_TIME=French_France.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] extrafont_0.17     ggforce_0.3.3      RColorBrewer_1.1-2 FactoMineR_2.4    
 [5] ggrepel_0.9.1      glue_1.4.2         ggtext_0.1.1       ggsflabel_0.0.1   
 [9] cowplot_1.1.1      ggstream_0.1.0     sf_1.0-3           forcats_0.5.1     
[13] stringr_1.4.0      dplyr_1.0.7        purrr_0.3.4        readr_2.0.2       
[17] tidyr_1.1.4        tibble_3.1.5       ggplot2_3.3.5      tidyverse_1.3.1   
[21] magrittr_2.0.1    

loaded via a namespace (and not attached):
 [1] fs_1.5.0             lubridate_1.8.0      httr_1.4.2           tools_4.1.1         
 [5] backports_1.2.1      utf8_1.2.2           R6_2.5.1             DT_0.19             
 [9] KernSmooth_2.23-20   DBI_1.1.1            colorspace_2.0-2     withr_2.4.2         
[13] tidyselect_1.1.1     compiler_4.1.1       extrafontdb_1.0      cli_3.0.1           
[17] rvest_1.0.1          flashClust_1.01-2    xml2_1.3.2           labeling_0.4.2      
[21] scales_1.1.1         classInt_0.4-3       proxy_0.4-26         digest_0.6.28       
[25] rmarkdown_2.11       pkgconfig_2.0.3      htmltools_0.5.2      dbplyr_2.1.1        
[29] fastmap_1.1.0        htmlwidgets_1.5.4    rlang_0.4.11         readxl_1.3.1        
[33] rstudioapi_0.13      generics_0.1.0       farver_2.1.0         jsonlite_1.7.2      
[37] leaps_3.1            Rcpp_1.0.7           munsell_0.5.0        fansi_0.5.0         
[41] lifecycle_1.0.1      scatterplot3d_0.3-41 stringi_1.7.5        yaml_2.2.1          
[45] MASS_7.3-54          grid_4.1.1           crayon_1.4.1         lattice_0.20-45     
[49] haven_2.4.3          gridtext_0.1.4       hms_1.1.1            knitr_1.36          
[53] pillar_1.6.3         reprex_2.0.1         evaluate_0.14        modelr_0.1.8        
[57] vctrs_0.3.8          tzdb_0.1.2           tweenr_1.0.2         Rttf2pt1_1.3.9      
[61] cellranger_1.1.0     gtable_0.3.0         polyclip_1.10-0      assertthat_0.2.1    
[65] xfun_0.26            broom_0.7.9          e1071_1.7-9          rsconnect_0.8.24    
[69] class_7.3-19         units_0.7-2          cluster_2.1.2        ellipsis_0.3.2
```
