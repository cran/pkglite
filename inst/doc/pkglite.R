## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(comment = "")

## -----------------------------------------------------------------------------
library("pkglite")

## -----------------------------------------------------------------------------
pkg <- system.file("examples/pkg1", package = "pkglite")
txt <- tempfile(fileext = ".txt")

## -----------------------------------------------------------------------------
pkg %>%
  collate(file_default()) %>%
  pack(output = txt, quiet = TRUE)

## -----------------------------------------------------------------------------
txt %>%
  readLines() %>%
  head(11) %>%
  cat(sep = "\n")

## -----------------------------------------------------------------------------
txt %>%
  readLines() %>%
  length()

## -----------------------------------------------------------------------------
out <- file.path(tempdir(), "onepkg")
txt %>% unpack(output = out, quiet = TRUE)

## -----------------------------------------------------------------------------
out %>%
  file.path("pkg1") %>%
  list.files()

## -----------------------------------------------------------------------------
pkg1 <- system.file("examples/pkg1", package = "pkglite")
pkg2 <- system.file("examples/pkg2", package = "pkglite")

fc1 <- pkg1 %>% collate(file_default())
fc2 <- pkg2 %>% collate(file_default())

pack(fc1, fc2, output = txt, quiet = TRUE)

## -----------------------------------------------------------------------------
txt %>%
  readLines() %>%
  length()

## -----------------------------------------------------------------------------
out <- file.path(tempdir(), "twopkgs")
txt %>% unpack(output = out, quiet = TRUE)

## -----------------------------------------------------------------------------
out %>%
  file.path("pkg1") %>%
  list.files()
out %>%
  file.path("pkg2") %>%
  list.files()

## -----------------------------------------------------------------------------
txt %>% verify_ascii()

## -----------------------------------------------------------------------------
txt %>% remove_content(c("## New Features", "## Improvements"), quiet = TRUE)

## -----------------------------------------------------------------------------
txt %>%
  readLines() %>%
  length()

