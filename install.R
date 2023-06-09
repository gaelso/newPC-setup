
install_package <- function(.pkg_name) {
  if (!require(.pkg_name, character.only = TRUE, quietly = TRUE)) 
    install.packages(.pkg_name, dep =TRUE)
}

install_remotes <- function(.pkg_name, .gh_repo) {
  if (!require(.pkg_name, character.only = TRUE, quietly = TRUE)) 
    remotes::install_github(.gh_repo)
}

## General data analysis
install_package("tidyverse")
install_package("data.table")

##ggplot extensions
install_package("ggrepel")
install_package("ggspatial")
install_package("ggpubr")
install_package("ggnewscale")

## Spatial data analysis
install_package("sf")
install_package("terra")
install_package("tidyterra")
install_package("dggridR")
install_package("tmap")

## Python
install_package("reticulate")

## Development
install_package("remotes")
install_package("devtools")

## Shiny apps
install_package("shiny")
install_package("shinyjs")
install_package("shinyWidgets")
install_package("shinyFiles")
install_package("DT")

## Communication
install_package("rmarkdown")
install_package("kableExtra")
install_package("blogdown")
install_package("learnr")
install_package("gradethis")

install_package('tinytex')
# install TinyTeX
if (!tinytex::is_tinytex()) tinytex::install_tinytex()


## Custom fonts
install_package("extrafont")
install_package("showtext")

## Multicore processing
install_package("future")
install_package("parallel")
install_package("furrr")
install_package("carrier")

## Plant taxonomy
install_package("taxize") ## For tropicos
install_package("taxadb") ## NCBI and GBIF
install_package("WorldFlora") ## 
# install_package("rWCVP") ## WCVP from Kew > Manual installation of the backbone
install_package("LCVP") ## Contain lcvp data 
install_package("lcvplants")

## In case CRAN repos fail
# install_remotes("LCVP", "idiv-biodiversity/LCVP")
# install_remotes("LCVP", "idiv-biodiversity/LCVP@v.3.0.1")
# install_remotes("lcvplants", "idiv-biodiversity/lcvplants")
