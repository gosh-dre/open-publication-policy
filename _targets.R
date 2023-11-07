# _targets.R
library(targets)
library(tarchetypes)
library(reticulate)

## Source all function files

lapply(list.files("./R", ".R$", full.names = TRUE), source)
options(tidyverse.quiet = TRUE)
tar_option_set(packages = c(
    "rmarkdown",
    "tidyverse",
    "plotly"))

tar_plan(

    last_target = 1

)
