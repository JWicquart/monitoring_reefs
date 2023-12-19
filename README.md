
<!-- README.md is generated from README.Rmd. Please edit that file -->

# **Coral reefs benthic monitoring: spatio-temporal distribution, methods and stakeholders**

**This repository contains code associated to the article:**

Wicquart, J., Prasil-Delaval, N., Obura, D., Gudka, M., Logan, M.,
Souter, D., Staub, F., Towle, E.K., Burt, J.A., Padovani Ferreira, B.,
Kimura, T., Chan, S., Tun, K., Ibrahim, N., Amer, M., Reyes Bonilla, H.,
Smith, F., GCRMN Consortium, Planes, S. (2022). Coral reefs benthic
monitoring: spatio-temporal distribution, methods and stakeholders. *in
prep*.

## 1. Abstract

## 2. How to download this project?

On the project main page on GitHub, click on the green button `Code` and
then click on `Download ZIP`

## 3. Context

*\[To be completed\]*

## 4. Description of the project

### 4.1 Project organization

- :open_file_folder: `R`
  - :open_file_folder: `functions` Functions used in the two main
    scripts
    - `graphical_par.R` Graphical parameters
    - `theme_graph.R` Theme for graphs
    - `theme_map.R` Theme for maps (primary)
    - `theme_map2.R` Theme for maps (secondary)
  - `01_reefs-ecoregion.R` Filter ecoregions containing coral reefs
  - `02_analysis.Rmd` Main analysis script

### 4.2 Data description

Four datasets were used for the analyses:

- Base map datasets downloaded on [Natural Earth
  Data](https://www.naturalearthdata.com/downloads/10m-physical-vectors/).

- Marine Ecoregions of the World (MEOW) dataset from [Spalding *et al*,
  2007](https://academic.oup.com/bioscience/article/57/7/573/238419).

- Distribution of coral reefs of the world from
  [UNEP-WCMC](https://data.unep-wcmc.org/datasets/1).

- Synthetic dataset used for the [*Status of Coral Reefs of the World:
  2020*](https://gcrmn.net/2020-report/) report.

## 5. How to report issues?

Please report any bugs or issues
[HERE](https://github.com/JWicquart/monitoring_reefs/issues).

## 6. Reproducibility parameters

    ─ Session info ───────────────────────────────────────────────────────────────
     setting  value
     version  R version 4.3.2 (2023-10-31 ucrt)
     os       Windows 10 x64 (build 18363)
     system   x86_64, mingw32
     ui       RTerm
     language (EN)
     collate  French_France.utf8
     ctype    French_France.utf8
     tz       Europe/Paris
     date     2023-12-19
     pandoc   3.1.1 @ C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools/ (via rmarkdown)

    ─ Packages ───────────────────────────────────────────────────────────────────
     package       * version    date (UTC) lib source
     abind           1.4-5      2016-07-21 [1] CRAN (R 4.3.1)
     askpass         1.2.0      2023-09-03 [1] CRAN (R 4.3.2)
     backports       1.4.1      2021-12-13 [1] CRAN (R 4.3.1)
     base64enc       0.1-3      2015-07-28 [1] CRAN (R 4.3.1)
     bit             4.0.5      2022-11-15 [1] CRAN (R 4.3.2)
     bit64           4.0.5      2020-08-30 [1] CRAN (R 4.3.2)
     blob            1.2.4      2023-03-17 [1] CRAN (R 4.3.2)
     boot            1.3-28.1   2022-11-22 [1] CRAN (R 4.3.2)
     brio            1.1.4      2023-12-10 [1] CRAN (R 4.3.2)
     broom           1.0.5      2023-06-09 [1] CRAN (R 4.3.2)
     bslib           0.6.1      2023-11-28 [1] CRAN (R 4.3.2)
     cachem          1.0.8      2023-05-01 [1] CRAN (R 4.3.2)
     callr           3.7.3      2022-11-02 [1] CRAN (R 4.3.2)
     car             3.1-2      2023-03-30 [1] CRAN (R 4.3.2)
     carData         3.0-5      2022-01-06 [1] CRAN (R 4.3.2)
     cellranger      1.1.0      2016-07-27 [1] CRAN (R 4.3.2)
     class           7.3-22     2023-05-03 [1] CRAN (R 4.3.2)
     classInt        0.4-10     2023-09-05 [1] CRAN (R 4.3.2)
     cli             3.6.2      2023-12-11 [1] CRAN (R 4.3.2)
     clipr           0.8.0      2022-02-22 [1] CRAN (R 4.3.2)
     cluster         2.1.4      2022-08-22 [1] CRAN (R 4.3.2)
     colorspace      2.1-0      2023-01-23 [1] CRAN (R 4.3.2)
     commonmark      1.9.0      2023-03-17 [1] CRAN (R 4.3.2)
     conflicted      1.2.0      2023-02-01 [1] CRAN (R 4.3.2)
     cpp11           0.4.7      2023-12-02 [1] CRAN (R 4.3.2)
     crayon          1.5.2      2022-09-29 [1] CRAN (R 4.3.2)
     crosstalk       1.2.1      2023-11-23 [1] CRAN (R 4.3.2)
     curl            5.2.0      2023-12-08 [1] CRAN (R 4.3.2)
     data.table      1.14.10    2023-12-08 [1] CRAN (R 4.3.2)
     DBI             1.1.3      2022-06-18 [1] CRAN (R 4.3.2)
     dbplyr          2.4.0      2023-10-26 [1] CRAN (R 4.3.2)
     desc            1.4.3      2023-12-10 [1] CRAN (R 4.3.2)
     diffobj         0.3.5      2021-10-05 [1] CRAN (R 4.3.2)
     digest          0.6.33     2023-07-07 [1] CRAN (R 4.3.2)
     dplyr           1.1.4      2023-11-17 [1] CRAN (R 4.3.2)
     DT              0.31       2023-12-09 [1] CRAN (R 4.3.2)
     dtplyr          1.3.1      2023-03-22 [1] CRAN (R 4.3.2)
     e1071           1.7-14     2023-12-06 [1] CRAN (R 4.3.2)
     ellipse         0.5.0      2023-07-20 [1] CRAN (R 4.3.2)
     ellipsis        0.3.2      2021-04-29 [1] CRAN (R 4.3.2)
     emmeans         1.9.0      2023-12-18 [1] CRAN (R 4.3.2)
     estimability    1.4.1      2022-08-05 [1] CRAN (R 4.3.1)
     evaluate        0.23       2023-11-01 [1] CRAN (R 4.3.2)
     FactoMineR      2.9        2023-10-12 [1] CRAN (R 4.3.2)
     fansi           1.0.6      2023-12-08 [1] CRAN (R 4.3.2)
     farver          2.1.1      2022-07-06 [1] CRAN (R 4.3.2)
     fastmap         1.1.1      2023-02-24 [1] CRAN (R 4.3.2)
     flashClust      1.01-2     2012-08-21 [1] CRAN (R 4.3.1)
     fontawesome     0.5.2      2023-08-19 [1] CRAN (R 4.3.2)
     forcats         1.0.0      2023-01-29 [1] CRAN (R 4.3.2)
     fs              1.6.3      2023-07-20 [1] CRAN (R 4.3.2)
     gargle          1.5.2      2023-07-20 [1] CRAN (R 4.3.2)
     generics        0.1.3      2022-07-05 [1] CRAN (R 4.3.2)
     ggforce         0.4.1      2022-10-04 [1] CRAN (R 4.3.2)
     ggplot2         3.4.4      2023-10-12 [1] CRAN (R 4.3.2)
     ggrepel         0.9.4      2023-10-13 [1] CRAN (R 4.3.2)
     ggstream        0.1.0      2021-05-06 [1] CRAN (R 4.3.2)
     ggtext          0.1.2      2022-09-16 [1] CRAN (R 4.3.2)
     glue            1.6.2      2022-02-24 [1] CRAN (R 4.3.2)
     googledrive     2.1.1      2023-06-11 [1] CRAN (R 4.3.2)
     googlesheets4   1.1.1      2023-06-11 [1] CRAN (R 4.3.2)
     gridtext        0.1.5      2022-09-16 [1] CRAN (R 4.3.2)
     gtable          0.3.4      2023-08-21 [1] CRAN (R 4.3.2)
     haven           2.5.4      2023-11-30 [1] CRAN (R 4.3.2)
     highr           0.10       2022-12-22 [1] CRAN (R 4.3.2)
     hms             1.1.3      2023-03-21 [1] CRAN (R 4.3.2)
     htmltools       0.5.7      2023-11-03 [1] CRAN (R 4.3.2)
     htmlwidgets     1.6.4      2023-12-06 [1] CRAN (R 4.3.2)
     httpuv          1.6.13     2023-12-06 [1] CRAN (R 4.3.2)
     httr            1.4.7      2023-08-15 [1] CRAN (R 4.3.2)
     ids             1.0.1      2017-05-31 [1] CRAN (R 4.3.2)
     isoband         0.2.7      2022-12-20 [1] CRAN (R 4.3.2)
     jpeg            0.1-10     2022-11-29 [1] CRAN (R 4.3.1)
     jquerylib       0.1.4      2021-04-26 [1] CRAN (R 4.3.2)
     jsonlite        1.8.8      2023-12-04 [1] CRAN (R 4.3.2)
     KernSmooth      2.23-22    2023-07-10 [1] CRAN (R 4.3.2)
     knitr           1.45       2023-10-30 [1] CRAN (R 4.3.2)
     labeling        0.4.3      2023-08-29 [1] CRAN (R 4.3.1)
     later           1.3.2      2023-12-06 [1] CRAN (R 4.3.2)
     lattice         0.21-9     2023-10-01 [1] CRAN (R 4.3.2)
     lazyeval        0.2.2      2019-03-15 [1] CRAN (R 4.3.2)
     leaps           3.1        2020-01-16 [1] CRAN (R 4.3.2)
     lifecycle       1.0.4      2023-11-07 [1] CRAN (R 4.3.2)
     lme4            1.1-35.1   2023-11-05 [1] CRAN (R 4.3.2)
     lubridate       1.9.3      2023-09-27 [1] CRAN (R 4.3.2)
     magrittr        2.0.3      2022-03-30 [1] CRAN (R 4.3.2)
     markdown        1.12       2023-12-06 [1] CRAN (R 4.3.2)
     MASS            7.3-60     2023-05-04 [1] CRAN (R 4.3.2)
     Matrix          1.6-1.1    2023-09-18 [1] CRAN (R 4.3.2)
     MatrixModels    0.5-3      2023-11-06 [1] CRAN (R 4.3.2)
     memoise         2.0.1      2021-11-26 [1] CRAN (R 4.3.2)
     mgcv            1.9-0      2023-07-11 [1] CRAN (R 4.3.2)
     mime            0.12       2021-09-28 [1] CRAN (R 4.3.1)
     minqa           1.2.6      2023-09-11 [1] CRAN (R 4.3.2)
     modelr          0.1.11     2023-03-22 [1] CRAN (R 4.3.2)
     multcompView    0.1-9      2023-04-09 [1] CRAN (R 4.3.2)
     munsell         0.5.0      2018-06-12 [1] CRAN (R 4.3.2)
     mvtnorm         1.2-4      2023-11-27 [1] CRAN (R 4.3.2)
     nlme            3.1-163    2023-08-09 [1] CRAN (R 4.3.2)
     nloptr          2.0.3      2022-05-26 [1] CRAN (R 4.3.2)
     nnet            7.3-19     2023-05-03 [1] CRAN (R 4.3.2)
     numDeriv        2016.8-1.1 2019-06-06 [1] CRAN (R 4.3.1)
     openssl         2.1.1      2023-09-25 [1] CRAN (R 4.3.2)
     patchwork       1.1.3      2023-08-14 [1] CRAN (R 4.3.2)
     pbkrtest        0.5.2      2023-01-19 [1] CRAN (R 4.3.2)
     pillar          1.9.0      2023-03-22 [1] CRAN (R 4.3.2)
     pkgbuild        1.4.3      2023-12-10 [1] CRAN (R 4.3.2)
     pkgconfig       2.0.3      2019-09-22 [1] CRAN (R 4.3.2)
     pkgload         1.3.3      2023-09-22 [1] CRAN (R 4.3.2)
     png             0.1-8      2022-11-29 [1] CRAN (R 4.3.1)
     polyclip        1.10-6     2023-09-27 [1] CRAN (R 4.3.1)
     praise          1.0.0      2015-08-11 [1] CRAN (R 4.3.2)
     prettyunits     1.2.0      2023-09-24 [1] CRAN (R 4.3.2)
     processx        3.8.3      2023-12-10 [1] CRAN (R 4.3.2)
     progress        1.2.3      2023-12-06 [1] CRAN (R 4.3.2)
     promises        1.2.1      2023-08-10 [1] CRAN (R 4.3.2)
     proxy           0.4-27     2022-06-09 [1] CRAN (R 4.3.2)
     ps              1.7.5      2023-04-18 [1] CRAN (R 4.3.2)
     purrr           1.0.2      2023-08-10 [1] CRAN (R 4.3.2)
     quantreg        5.97       2023-08-19 [1] CRAN (R 4.3.2)
     R6              2.5.1      2021-08-19 [1] CRAN (R 4.3.2)
     ragg            1.2.7      2023-12-11 [1] CRAN (R 4.3.2)
     rappdirs        0.3.3      2021-01-31 [1] CRAN (R 4.3.2)
     RColorBrewer    1.1-3      2022-04-03 [1] CRAN (R 4.3.1)
     Rcpp            1.0.11     2023-07-06 [1] CRAN (R 4.3.2)
     RcppEigen       0.3.3.9.4  2023-11-02 [1] CRAN (R 4.3.2)
     readr           2.1.4      2023-02-10 [1] CRAN (R 4.3.2)
     readxl          1.4.3      2023-07-06 [1] CRAN (R 4.3.2)
     rematch         2.0.0      2023-08-30 [1] CRAN (R 4.3.2)
     rematch2        2.1.2      2020-05-01 [1] CRAN (R 4.3.2)
     reprex          2.0.2      2022-08-17 [1] CRAN (R 4.3.2)
     rlang           1.1.2      2023-11-04 [1] CRAN (R 4.3.2)
     rmarkdown       2.25       2023-09-18 [1] CRAN (R 4.3.2)
     rprojroot       2.0.4      2023-11-05 [1] CRAN (R 4.3.2)
     rstudioapi      0.15.0     2023-07-07 [1] CRAN (R 4.3.2)
     rvest           1.0.3      2022-08-19 [1] CRAN (R 4.3.2)
     s2              1.1.5      2023-12-10 [1] CRAN (R 4.3.2)
     sass            0.4.8      2023-12-06 [1] CRAN (R 4.3.2)
     scales          1.3.0      2023-11-28 [1] CRAN (R 4.3.2)
     scatterplot3d   0.3-44     2023-05-05 [1] CRAN (R 4.3.1)
     selectr         0.4-2      2019-11-20 [1] CRAN (R 4.3.2)
     sf              1.0-15     2023-12-18 [1] CRAN (R 4.3.2)
     SparseM         1.81       2021-02-18 [1] CRAN (R 4.3.1)
     stringi         1.8.3      2023-12-11 [1] CRAN (R 4.3.2)
     stringr         1.5.1      2023-11-14 [1] CRAN (R 4.3.2)
     survival        3.5-7      2023-08-14 [1] CRAN (R 4.3.2)
     sys             3.4.2      2023-05-23 [1] CRAN (R 4.3.2)
     systemfonts     1.0.5      2023-10-09 [1] CRAN (R 4.3.2)
     testthat        3.2.1      2023-12-02 [1] CRAN (R 4.3.2)
     textshaping     0.3.7      2023-10-09 [1] CRAN (R 4.3.2)
     tibble          3.2.1      2023-03-20 [1] CRAN (R 4.3.2)
     tidyr           1.3.0      2023-01-24 [1] CRAN (R 4.3.2)
     tidyselect      1.2.0      2022-10-10 [1] CRAN (R 4.3.2)
     tidyverse       2.0.0      2023-02-22 [1] CRAN (R 4.3.2)
     timechange      0.2.0      2023-01-11 [1] CRAN (R 4.3.2)
     tinytex         0.49       2023-11-22 [1] CRAN (R 4.3.2)
     tweenr          2.0.2      2022-09-06 [1] CRAN (R 4.3.2)
     tzdb            0.4.0      2023-05-12 [1] CRAN (R 4.3.2)
     units           0.8-5      2023-11-28 [1] CRAN (R 4.3.2)
     utf8            1.2.4      2023-10-22 [1] CRAN (R 4.3.2)
     uuid            1.1-1      2023-08-17 [1] CRAN (R 4.3.1)
     vctrs           0.6.5      2023-12-01 [1] CRAN (R 4.3.2)
     viridisLite     0.4.2      2023-05-02 [1] CRAN (R 4.3.2)
     vroom           1.6.5      2023-12-05 [1] CRAN (R 4.3.2)
     waldo           0.5.2      2023-11-02 [1] CRAN (R 4.3.2)
     withr           2.5.2      2023-10-30 [1] CRAN (R 4.3.2)
     wk              0.9.1      2023-11-29 [1] CRAN (R 4.3.2)
     xfun            0.41       2023-11-01 [1] CRAN (R 4.3.2)
     xml2            1.3.6      2023-12-04 [1] CRAN (R 4.3.2)
     yaml            2.3.8      2023-12-11 [1] CRAN (R 4.3.2)

     [1] C:/Users/jwicquart/AppData/Local/Programs/R/R-4.3.2/library

    ──────────────────────────────────────────────────────────────────────────────
