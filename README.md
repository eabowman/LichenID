# LichenID

This is a work in progress and is incomplete.

references/ contains the csv files from iNaturalist and LichenPortal with species name and url to the image.
  iNaturalist_21Apr25.csv: Travis and Williamson county data
  LichenPortal_Texas_22Apr24.csv: All of texas; the original occurrences.csv and multimedia.csv were combined with Combine_LichenPortal_Datasets.R
  LichenPortal_Texas_22Apr24_filtered.csv: filtered to keep only files with organism photos; created with FilterVoucherImages_LichenPortal.R. See R script for filter terms.

scripts/ contains all code to produce the image classifier.
  Combine_LichenPortal_Datasets.R	
  PyiNaturalist.ipynb
  duplicate_images_to_redownload.csv
  PyTorchImageClassifier_V1.ipynb
  FilterVoucherImages_LichenPortal.R
  PyTorchImageClassifier_V2.ipynb
  OrganizePhotos_Pytorch.ipynb
  Split_dataset.ipynb
