accred <- read.csv("unistats2015/ACCREDITATION.csv")
courseLocation <- read.csv("unistats2015/courseLocation.csv")
location <- read.csv("unistats2015/location.csv")
entry <- read.csv("unistats2015/entry.csv")
ukprnLookup <- read.xls("unistats2015/UNISTATS_UKPRN_lookup_20141030.xls", sheet="Lookup")
salary <- read.csv("unistats2015/salary.csv")
tariff <- read.csv("unistats2015/tariff.csv")
degreeClass <- read.csv("unistats2015/degreeClass.csv")
common <- read.csv("unistats2015/common.csv")
ukprnLookup <- read.xls("unistats2015/UNISTATS_UKPRN_lookup_20141030.xls", sheet="Lookup")

x <- left_join(ukprnLookup, tariff, by="UKPRN")
x_summary <- mutate(x, tariffMean = (T1 * 60 + T120 * 140 + T160 * 180 
                                     + T200 * 220 + T240 * 260 + T280 * 300
                                     + T320 * 340 + T360 * 380 + T400 * 420 
                                     + T440 * 460 + T480 * 500 + T520 * 540 
                                     + T560 * 580 + T600 * 620)/100)
x2 <- filter(x_summary, !is.na(tariffMean))
x3 <- aggregate(tariffMean ~ UKPRN + NAME, FUN = mean, data=x2)
