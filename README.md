# **Coral reefs benthic monitoring: spatio-temporal distribution, methods and stakeholders**


**This repository contains code associated to the article:**

Wicquart, J., Prasil-Delaval, N., Obura, D., Gudka, M., Logan, M., Souter, D., Staub, F., Towle, E.K., Burt, J.A., Padovani Ferreira, B., Kimura, T., Chan, S., Tun, K., Ibrahim, N., Amer, M.,  Reyes Bonilla, H., Smith, F.,  GCRMN Consortium, Planes, S. (2022). Coral reefs benthic monitoring: spatio-temporal distribution, methods and stakeholders. _in prep_.

## 1. Abstract



## 2. How to download this project?

On the project main page on GitHub, click on the green button `Code` and then click on `Download ZIP`

## 3. Context

*[To be completed]*

## 4. Description of the project

### 4.1 Project organization

* :open_file_folder: `R`
  + :open_file_folder: `functions` Functions used in the two main scripts
    - `graphical_par.R` Graphical parameters
    - `theme_graph.R` Theme for graphs
    - `theme_map.R` Theme for maps (primary)
    - `theme_map2.R` Theme for maps (secondary)
  + `01_reefs-ecoregion.R` Filter ecoregions containing coral reefs
  + `02_analysis.Rmd` Main analysis script

### 4.2 Data description

Four datasets were used for the analyses:

* :earth_africa: **-** Base map datasets downloaded on [Natural Earth Data](https://www.naturalearthdata.com/downloads/10m-physical-vectors/).

* :globe_with_meridians: **-** Marine Ecoregions of the World (MEOW) dataset from [Spalding *et al*, 2007](https://academic.oup.com/bioscience/article/57/7/573/238419).

* :world_map:	**-** Distribution of coral reefs of the world from [UNEP-WCMC](https://data.unep-wcmc.org/datasets/1).

* :diving_mask:	**-** Synthetic dataset used for the [*Status of Coral Reefs of the World: 2020*](https://gcrmn.net/2020-report/) report.

## 5. How to report issues?

Please report any bugs or issues [HERE](https://github.com/JWicquart/monitoring_reefs/issues).


## 6. Reproducibility parameters

```R
R version 4.1.3 (2022-03-10)
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
 [1] ggforce_0.3.3      RColorBrewer_1.1-2 FactoMineR_2.4     ggrepel_0.9.1     
 [5] glue_1.6.2         ggtext_0.1.1       ggsflabel_0.0.1    cowplot_1.1.1     
 [9] patchwork_1.1.1    ggstream_0.1.0     sf_1.0-7           forcats_0.5.1     
[13] stringr_1.4.0      dplyr_1.0.8        purrr_0.3.4        readr_2.1.2       
[17] tidyr_1.2.0        tibble_3.1.6       ggplot2_3.3.5      tidyverse_1.3.1   
[21] magrittr_2.0.3    

loaded via a namespace (and not attached):
 [1] httr_1.4.2           jsonlite_1.8.0       modelr_0.1.8         assertthat_0.2.1    
 [5] cellranger_1.1.0     yaml_2.3.5           pillar_1.7.0         backports_1.4.1     
 [9] lattice_0.20-45      digest_0.6.29        polyclip_1.10-0      gridtext_0.1.4      
[13] rvest_1.0.2          colorspace_2.0-3     htmltools_0.5.2      pkgconfig_2.0.3     
[17] broom_0.7.12         haven_2.4.3          scales_1.1.1         tweenr_1.0.2        
[21] tzdb_0.3.0           proxy_0.4-26         farver_2.1.0         generics_0.1.2      
[25] DT_0.22              ellipsis_0.3.2       withr_2.5.0          cli_3.2.0           
[29] crayon_1.5.1         readxl_1.4.0         evaluate_0.15        fs_1.5.2            
[33] fansi_1.0.3          MASS_7.3-55          xml2_1.3.3           class_7.3-20        
[37] tools_4.1.3          hms_1.1.1            lifecycle_1.0.1      munsell_0.5.0       
[41] reprex_2.0.1         cluster_2.1.2        flashClust_1.01-2    compiler_4.1.3      
[45] e1071_1.7-9          rlang_1.0.2          classInt_0.4-3       units_0.8-0         
[49] grid_4.1.3           rstudioapi_0.13      htmlwidgets_1.5.4    leaps_3.1           
[53] rmarkdown_2.13       gtable_0.3.0         DBI_1.1.2            R6_2.5.1            
[57] lubridate_1.8.0      knitr_1.38           fastmap_1.1.0        utf8_1.2.2          
[61] KernSmooth_2.23-20   stringi_1.7.6        Rcpp_1.0.8.3         vctrs_0.4.0         
[65] scatterplot3d_0.3-41 dbplyr_2.1.1         tidyselect_1.1.2     xfun_0.30  
```
