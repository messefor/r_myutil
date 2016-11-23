# samples
rm(list = ls(all=TRUE))

require("devtools")
root.path <- 'https://raw.githubusercontent.com/messefor/r_myutil/master/'

# load from github
devtools::source_url(paste0(root.path,'chk_install_pkgs/chk_install_pkgs.R'))

# load packages
chk.install.pkgs(required.pkgs = c('ggplot2', 'dplyr'))
