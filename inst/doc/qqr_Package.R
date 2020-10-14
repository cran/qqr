## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = TRUE,
  background = "white"
)

## ----setup, echo=FALSE, warning=FALSE, message=FALSE--------------------------
library(qqr)

## ---- echo=TRUE, background="white"-------------------------------------------
data("BRSoccer2014")

## -----------------------------------------------------------------------------
previousData(year = 2018)

## -----------------------------------------------------------------------------
currentData()

