options(scipen = 999)
options(stringsAsFactors = FALSE)


setwd("C:\\Users\\jasonbarker\\Documents\\Drought")
## NOAA data downloaded from https://www7.ncdc.noaa.gov/CDO/cdo
## On 8/20/2019
## Metadata found in drought-readme downloaded on 8/20/19



list_of_files = list.files("C:\\your\\file\\location", pattern = '*csv')
list_of_csv = lapply(list_of_files, read.csv)
pdsi_noaa = do.call('rbind', list_of_csv)
pdsi_noaa <- names(pdsi_noaa)
pdsi_noaa$Clim_Year <- substr(pdsi_noaa$YearMonth, 1, 4)
unique(pdsi_noaa$Clim_Year)
str(pdsi_noaa)


## Downloaded shp file containing NOAA Climatic Regions
## Intersect in ARCGis with FirePlots shp file
library(readxl)
warnings()
clim_div_plot <- read_xls("C:\\your\\file\\location", sheet = NULL, range = NULL, col_names = TRUE,
         col_types = NULL, na = "", trim_ws = TRUE, skip = 0,
         n_max = Inf, 
         progress = readxl_progress(), .name_repair = "unique")
names(clim_div_plot)

## Link data to FIA public plot ID





save.image("pdsi.RData")
rbind






