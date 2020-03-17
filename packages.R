#Sys.setenv(PKG_CONFIG_PATH = "/usr/local/lib/pkgconfig/")

installed <- installed.packages()[,"Package"]
list.of.packages <- c("Rcpp", "tidyr", "dplyr", "readr", "ggplot2", "gridExtra", "sf", "viridis", "ggfortify", "flextable", "cowplot", "tidyverse")
new.packages <- list.of.packages[!(list.of.packages %in% installed)]
if(length(new.packages)) install.packages(new.packages)

if (!("cowplot" %in% installed)) {
	# Use a specific version of cowplot that is compatible with R 3.4.4 which seems to be the default on Ubuntu atm
	install.packages("https://cran.r-project.org/src/contrib/Archive/cowplot/cowplot_0.9.2.tar.gz", repos=NULL, type="source")
}
