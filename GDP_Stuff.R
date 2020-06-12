library(ggplot2)
library(dplyr)    # data munging
library(scales)   # nicer axis scale labels
library(tidyverse)

#Read in inflation data
inflation_file <- 'Inflation_oil.csv'
inflation_data <- read.csv(inflation_file)


#Divide into Geographical Areas

inf_data <- select(inflation_data, c(Country_Name, X2010, X2011, X2012, X2013, X2014, X2015, X2016, X2017, X2018, X2019))

Northern <- filter(inf_data, Country_Name %in%
                     c("Western Sahara", "Mauritania", "Algeria", "Tunisia", "Libya", "Egypt"))

CentralEast <- filter(inf_data, Country_Name %in%
                     c("Mali", "Cape Verde", "Senegal", "Gambia", "Guinea", 
                       "Sierra Leone", "Liberia", "Cote d'Ivoire", "Ghana", "Togo", "Benin", 
                       "Nigeria", "Niger", "Burkina faso"))

Central <- filter(inf_data, Country_Name %in%
                    c("Sao Tome Principe", "Equatorial Guinea", "Cameroon", 
                      "Central Africa Republic", "Gabon", "Chad", "Congo", 
                      "Burundi"))

CentralWest <- filter(inf_data, Country_Name %in%
                        c("Sudan", "Ethiopia", "Eritrea", "Djibouti", 
                          "Somalia", "Kenya", "Uganda", "Rwanda", "Tanzania", 
                          "Comoros", "Seychelles", "Madagascar", "Mauritius"))

Southern <- filter(inf_data, Country_Name %in%
                     c("Malawi", "Zambia", "Zibambwe", "Namibia", "Swaziland", 
                       "Lesotho", "Botswana", "South Africa", "Angola", "Mozambique"))

