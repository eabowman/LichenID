# LichenID

This is a work in progress and is incomplete.

**references/** contains the csv files from iNaturalist and LichenPortal with species name and url to the image.<br>
<space><space>*<space>iNaturalist_21Apr25.csv: Travis and Williamson county data<br>
<space><space>*<space>LichenPortal_Texas_22Apr24.csv: All of texas; the original occurrences.csv and multimedia.csv were combined with Combine_LichenPortal_Datasets.R<br>
<space><space>*<space>LichenPortal_Texas_22Apr24_filtered.csv: filtered to keep only files with organism photos; created with FilterVoucherImages_LichenPortal.R. See R script for filter terms.<br><br>

**scripts/** contains all code to produce the image classifier.<br>
<space><space>*<space>Combine_LichenPortal_Datasets.R: See above <br>
<space><space>*<space>FilterVoucherImages_LichenPortal.R: See above <br>
<space><space>*<space>PyiNaturalist.ipynb: Downloads images and occurences from iNaturalist; still in progress <br>
<space><space>*<space>OrganizePhotos_Pytorch.ipynb: Takes url and species names from csv files in **references/** and creates class folders in **dataset/** for all images. Renames redundant image names which was an issue with iNaturalist images <br>
<space><space>*<space>Split_dataset.ipynb: Splits the dataset images into a traning folder (**train/**) and a validation folder (**val/**) at 80% and 20%, respectively <br>
<space><space>*<space>PyTorchImageClassifier_V1.ipynb: Image classifier version 1 <br>
<space><space>*<space>PyTorchImageClassifier_V2.ipynb: Image classifier version 2; in progress <br>

**test_images/** contains images of lichens to test the image classifier model with <br>

## To do
  1. Finish image classifier and test it.
  2. Build in a method to get diversity and species richness estimates from an image set (e.g. single folder per sample set, get a measurement per sample set).
  3. Identificaiton of indicator species. Need to build database for this first. 
