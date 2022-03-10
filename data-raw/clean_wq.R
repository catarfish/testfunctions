## code to prepare `YBFMP_WQ` dataset goes here

# Load packages
library(tidyverse)
library(lubridate)
library(wateRshedTools)

library(kableExtra)
library(gridExtra)

# Read in data
phys0 <- read_csv("data-raw/YBFMP_WQ_20210204.csv")

# Datetime
phys <- phys0 %>%
  mutate(Datetime = paste(Date, Time, sep = " "),
        Datetime = mdy_hms(Datetime),
        Date = date(Datetime),
        Year = year(Datetime),
        Month = month(Datetime),
        MonthAbb = month(Datetime, label = TRUE),
        WY = wateRshedTools::wtr_yr(Date),
        doWY = wateRshedTools::dowy(Datetime),
        Tide = as.factor(Tide))

# Select columns
phys.s <- phys %>%
  select(PhysicalDataID, StationCode = `Station Code`,
         Date, Datetime, Year, WY, Month, MonthAbb, doWY, Tide,
         Microcystis = MicrocystisVisualRank,
         Secchi = SecchiDiskDepth, WaterTemp = WaterTemperature,
         Conductivity = EC, SpecificConductance = SpCnd,
         DO, pH, Turbidity,
         FieldComments_WQ = Comments)

YBFMP_WQ = phys.s

# Write this to the data folder
usethis::use_data(YBFMP_WQ, overwrite = TRUE)
