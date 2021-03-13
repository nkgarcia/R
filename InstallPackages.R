library(readr)
library(dplyr)
library(magrittr)
library(knitr)
library(data.table)


options(repos=structure(c(CRAN="https://ftp.osuosl.org/pub/cran/")))
packages <- c("data.table","lubridate","httr","RJSONIO","DBI","RPostgreSQL","parallel","doParallel","parsedate","RPostgres")
for(pkg in packages){
  if (!require(pkg, character.only=TRUE)) {
    install.packages(pkg)
    require(pkg, character.only=TRUE)
  }
}
