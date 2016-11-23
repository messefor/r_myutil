# r_myutil

R tools and utilities aiming to load over http. 

```R
require("devtools")
root.path <- 'https://raw.githubusercontent.com/messefor/r_myutil/master/'

# load from github
devtools::source_url(paste0(root.path,'chk_install_pkgs/chk_install_pkgs.R'))

# load packages
chk.install.pkgs(required.pkgs = c('ggplot2', 'dplyr'))

```