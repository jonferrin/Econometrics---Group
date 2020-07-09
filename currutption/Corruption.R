library(ggplot2)
library(tidyverse)
library(dygraphs)

#Read in CPI data
cpi_data <- read.csv('CPI_data2.csv')
 
cpi_data <- dmy(cpi_data$Date)

mylm <- lm(Denmark ~ Finland, data = cpi_data)
summary(mylm)
par(mfrow=c(1,3))
plot(mylm,which=1:2)
plot(mylm$residuals)
confint(mylm, level = 0.95)

#Northern
Northern <- filter(cpi_data, Country %in%
                     (c("Mauritania", "Algeria", "Tunisia", "Mali", "Senegal",  "Guinea", "Liberia", "Ghana", "Togo", "Nigeria", "Niger")))


#CentralEast
CentralEast <- filter(cpi_data, Country %in%
                        c("Mali", "Cape Verde", "Senegal", "Gambia", "Guinea", "Sierra Leone", "Liberia", "Cote d'Ivoire", "Ghana", "Togo", "Benin", "Nigeria", "Niger", "Burkina faso"))


#Central
Central <- filter(cpi_data, Country %in%
                    c("Sao Tome Principe", "Equatorial Guinea", "Cameroon", 
                      "Central Africa Republic", "Gabon", "Chad", "Congo", 
                      "Burundi"))


#CentralWest
CentralWest <- filter(cpi_data, Country %in%
                        c("Sudan", "Ethiopia", "Eritrea", "Djibouti", 
                          "Somalia", "Kenya", "Uganda", "Rwanda", "Tanzania", 
                          "Comoros", "Seychelles", "Madagascar", "Mauritius"))

#Southern
Southern <- filter(cpi_data, Country %in%
                     c("Malawi", "Zambia", "Zibambwe", "Namibia", "Swaziland", 
                       "Lesotho", "Botswana", "South Africa", "Angola", "Mozambique"))


#MiddleEast
MiddleEast <- filter(cpi_data, Country %in%
                       c("Egypt", "Turkey", "Iran", "Iraq", "Saudi Arabia", 
                         "Yemen", "Syria", "Jordan", "United Arab Emirates", 
                         "Israel", "Libya", "Lebanon", "Oman", "Palestine", "Kuwait", 
                         "Qatar", "Bahrain"))

barplot(MiddleEast$CPI.score.2019)
mylm <- lm()

