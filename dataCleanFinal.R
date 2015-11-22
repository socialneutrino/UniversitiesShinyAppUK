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
KIScourse <- read.csv("unistats2015/KISCOURSE.csv")

##Names of Institutions and UCAS Entry Tariffs
tariffMeans <- ukprnLookup %>% 
  left_join(tariff, by="UKPRN") %>%
  mutate(tariffMean = (T1 * 60 + T120 * 140 + T160 * 180 
                       + T200 * 220 + T240 * 260 + T280 * 300
                       + T320 * 340 + T360 * 380 + T400 * 420 
                       + T440 * 460 + T480 * 500 + T520 * 540 
                       + T560 * 580 + T600 * 620)/100) %>%
  filter(!is.na(tariffMean))
tariffMeans <- aggregate(tariffMean ~ UKPRN + NAME, FUN = mean, data=tariffMeans)
x.location <- left_join(x2, courseLocation, by="UKPRN")

#Choose most common for group
maxFreq <- function(x){
  tbl <- table(x$v1)
  x$freq <- rep(names(tbl)[which.max(tbl)],nrow(x))
  x
}

#UKPRN matched with most common LOCID
x.LOCID <- tariffMeans %>% 
    left_join(courseLocation, by="UKPRN") %>%
    count(UKPRN, LOCID) %>%
    slice(which.max(n))

#Location information
instLocations <- location %>%
  select(UKPRN, LATITUDE, LONGITUDE)  %>%
  group_by(UKPRN) %>% 
  summarise(instLatitude = mean(LATITUDE), instLongitude = mean(LONGITUDE))

##UKPRN matched with Salary Premium
salaryMedian <- select(salary, UKPRN, KISCOURSEID, SALPOP, MED, INSTMED)
salaryMedian <- mutate(salaryMedian, instPremium = 100*(INSTMED - MED)/MED)
salaryPremium <- salaryMedian %>% 
                  group_by(UKPRN) %>% 
                  summarise(instPremMean = weighted.mean(instPremium, SALPOP))

##UKPRN matched with Degree Classs
degreeSummary <- select(degreeClass, UKPRN, KISCOURSEID, DEGPOP, 
                        UFIRST, UUPPER, ULOWER, UOTHER, UORDINARY, UNA)

degreeSummary <- degreeSummary %>% 
  group_by(UKPRN) %>% 
  summarise(totalFirst = weighted.mean(UFIRST, DEGPOP),
            totalUpper = weighted.mean(UFIRST + UUPPER, DEGPOP),
            totalSecond = weighted.mean(UFIRST + UUPPER + ULOWER, DEGPOP))

degreeSummary[,-1] <- round(degreeSummary[,-1])

instStats <- tariffMeans %>%
  inner_join(instLocations, by="UKPRN") %>%
  inner_join(salaryPremium, by="UKPRN") %>%
  inner_join(degreeSummary, by="UKPRN")

saveRDS(instStats, file="instStats.rda")
