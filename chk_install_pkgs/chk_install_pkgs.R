
# check package installed and load them all
chk.install.pkgs <- function(required.pkg) {
  
  # @param vector, string/ name of packages to load
  
  # install packages if not installed
  not.installed <- !(required.pkg %in% installed.packages()[,'Package'])
  if (any(not.installed)) {
    install.packages(required.pkg[not.installed]) 
  }
  # load packages  
  sapply(required.pkg, require, character.only = TRUE)
}


# @sample
#
# required.pkg <- 
#   c(
#     'dummies',
#     'tidyverse',
#     'glmnet'
#   )
# 
# chk.install.pkgs(required.pkg)
#