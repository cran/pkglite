## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
)

## -----------------------------------------------------------------------------
library("pkglite")

## -----------------------------------------------------------------------------
fs <- file_spec(
  "R/",
  pattern = "\\.R$", format = "text",
  recursive = FALSE, ignore_case = TRUE, all_files = FALSE
)

fs

## -----------------------------------------------------------------------------
pkg <- system.file("examples/pkg1/", package = "pkglite")

## -----------------------------------------------------------------------------
pkg %>% collate(fs)

## -----------------------------------------------------------------------------
pkg %>% collate(file_root_core())

## -----------------------------------------------------------------------------
pkg %>% collate(file_root_all())

## -----------------------------------------------------------------------------
pkg %>% collate(file_r(), file_man())

## -----------------------------------------------------------------------------
pkg %>% collate(file_src())

## -----------------------------------------------------------------------------
pkg %>% collate(file_r(), file_man(), file_src())

## -----------------------------------------------------------------------------
pkg %>% collate(file_default())

## -----------------------------------------------------------------------------
pkg %>% collate(file_auto("inst/"))

