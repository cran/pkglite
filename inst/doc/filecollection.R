## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
)

## -----------------------------------------------------------------------------
library("pkglite")
pkg <- system.file("examples/pkg1/", package = "pkglite")

fc <- merge(
  pkg %>% collate(file_root_core()),
  pkg %>% collate(file_r()),
  pkg %>% collate(file_r(), file_man())
)

fc

## -----------------------------------------------------------------------------
fc %>% prune(path = c("NEWS.md", "man/figures/logo.png"))

## -----------------------------------------------------------------------------
pkg %>%
  collate(file_data()) %>%
  prune(path = "data/dataset.rda")

## -----------------------------------------------------------------------------
pattern_file_sanitize()

## -----------------------------------------------------------------------------
fc %>% sanitize()

