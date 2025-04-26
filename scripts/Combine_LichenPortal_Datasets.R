setwd("~/Library/CloudStorage/Dropbox/LichenProject")
lp <- read.csv('LichenPortal_Texas_22Apr24.csv')
select(lp, -X, -scientificNameAuthorship) -> lp
occ <- read.csv('SymbOutput_2025-04-21_102242_DwC-A/occurrences.csv')

# install.packages('tidyverse')
library(tidyverse)

for(i in unique(lp$coreid)){
  occ.i <- occ[occ$id == i, 'scientificName']
  if(length(occ.i) == 1){
    lp[lp$coreid == i, 'scientificName'] <- occ.i
  } else if(length(occ.i) > 1){
    print(paste0(i, ' has more than 1 taxon: ', occ.i))
  } else if(length(occ.i) < 1){
    print(paste0(i, ' has no taxon.'))
  }
}

write.csv(lp, 'LichenPortal_Texas_22Apr24.csv', row.names = F)
