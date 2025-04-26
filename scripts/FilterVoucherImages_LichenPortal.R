# Need to remove images that are of the herbarium sheets to reduce the download size
# Later, to avoid this, can set of PyTorch to ignore voucher labels

setwd("~/Library/CloudStorage/Dropbox/LichenProject")

lp <- read.csv('references/LichenPortal_Texas_22Apr24.csv')
select(lp, -X) -> lp

library(tidyverse)

# select only images indicated to have specimen included.
unique(lp$caption) -> caption.lp
unique(lp$comments) -> comments.lp
unique(lp$tag) -> tag.lp
lp %>%
  filter(
    str_detect(tolower(caption), "specimen|image|field|photo") |
    str_detect(tolower(comments), "specimen|image|field|photo") |
    str_detect(tolower(tag), "specimen|field|photo|fieldimage|hasorganism|dryimage|macrophoto|wetimage")
  ) -> lp.filtered

write.csv(lp.filtered,
          'references/LichenPortal_Texas_22Apr24_filtered.csv',
          row.names = F)
