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

x <- left_join(ukprnLookup, tariff, by="UKPRN")
x_summary <- mutate(x, tariffMean = (T1 * 60 + T120 * 140 + T160 * 180 
                                     + T200 * 220 + T240 * 260 + T280 * 300
                                     + T320 * 340 + T360 * 380 + T400 * 420 
                                     + T440 * 460 + T480 * 500 + T520 * 540 
                                     + T560 * 580 + T600 * 620)/100)
x.location <- left_join(x_summary, courseLocation, by="UKPRN")
x2 <- filter(x_summary, !is.na(tariffMean))
x3 <- aggregate(tariffMean ~ UKPRN + NAME + LOCID, FUN = mean, data=x2)
x.location <- left_join(x3, courseLocation, by="UKPRN")

#Choose most common for group
maxFreq <- function(x){
  tbl <- table(x$v1)
  x$freq <- rep(names(tbl)[which.max(tbl)],nrow(x))
  x
}

#UKPRN matched with most common LOCID
x.LOCID <- x.location %>% 
    count(UKPRN, LOCID) %>%
    slice(which.max(n))

##UKPRN matched with Salary Premium
salaryMedian <- select(salary, UKPRN, KISCOURSEID, SALPOP, MED, INSTMED)
salaryMedian <- mutate(salaryMedian, instPremium = 100*(INSTMED - MED)/MED)
salaryPremium <- salaryMedian %>% 
                  group_by(UKPRN) %>% 
                  summarise(mean = mean(instPremium), 
                            instPremMean = weighted.mean(instPremium, SALPOP))

##UKPRN matched with Degree Classs
degreeSummary <- select(degreeClass, UKPRN, KISCOURSEID, DEGPOP, 
                        UFIRST, UUPPER, ULOWER, UOTHER, UORDINARY, UNA)

degreeSummary <- degreeSummary %>% 
  group_by(UKPRN) %>% 
  summarise(totalFirst = weighted.mean(UFIRST, DEGPOP),
            totalUpper = weighted.mean(UFIRST + UUPPER, DEGPOP),
            totalSecond = weighted.mean(UFIRST + UUPPER + ULOWER, DEGPOP))

degreeSummary[,-1] <- round(degreeSummary[,-1])                                                   