# check package installed and load them all

chk.install.pkgs <- function(required.pkgss) {
  
  # @param vector, string/ name of packages to load
  
  # install packages if not installed
  not.installed <- !(required.pkgs %in% installed.packages()[,'Package'])
  if (any(not.installed)) {
    install.packages(required.pkgs[not.installed]) 
  }
  # load packages  
  sapply(required.pkgs, require, character.only = TRUE)
}


# @sample
#
# required.pkgs <-
#   c(
#     'dummies',
#     'tidyverse',
#     'glmnet'
#   )
# 
# chk.install.pkgs(required.pkgs)
