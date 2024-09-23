library(tidyverse)
library(here)
library(coderr)
library(readr)
library(stringr)
library(readxl)
library(clipr)
library(datapointsr)
library(dbr)

# LOAD DATABASE

cn <- dbr::init_sqlite(database_file = "tasting_notes_db.sql")

# LOAD FUNCTIONS

function_files <- list.files(
  path = paste0(here::here(), "/functions"),
  pattern = "\\.R$")

for (file in function_files) {
    source(paste0(here::here(), "/functions/", file))
}