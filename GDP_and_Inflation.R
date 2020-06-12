library(ggplot2)
library(dplyr)    # data munging
library(scales)   # nicer axis scale labels
library(tidyverse)

#Read in inflation data
inflation_file <- 'Inflation_oil.csv'
inflation_data <- read.csv(inflation_file)


#Divide into Geographical Areas

inf_data <- select(inflation_data, c(Country_Name, X2010, X2011, X2012, X2013, X2014, X2015, X2016, X2017, X2018, X2019))

#Northern
Northern <- filter(inf_data, Country_Name %in%
                     c("Western Sahara", "Mauritania", "Algeria", "Tunisia"))


CrimePlot <- ggplot(data = my_data, aes(x = crime_per_capita, y = median_price, color=crime_per_capita))+
  geom_point()+
  labs( x= "Crime per Capita", y= "Home Prices", title = "Severe Crime Appears Socioeconomic", subtitle = "Graph 1")+
  scale_color_viridis()+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))
print(CrimePlot)
ggsave("CrimePlot.png", plot = CrimePlot)


#CentralEast
CentralEast <- filter(inf_data, Country_Name %in%
                     c("Mali", "Cape Verde", "Senegal", "Gambia", "Guinea", 
                       "Sierra Leone", "Liberia", "Cote d'Ivoire", "Ghana", "Togo", "Benin", 
                       "Nigeria", "Niger", "Burkina faso"))


#Central
Central <- filter(inf_data, Country_Name %in%
                    c("Sao Tome Principe", "Equatorial Guinea", "Cameroon", 
                      "Central Africa Republic", "Gabon", "Chad", "Congo", 
                      "Burundi"))


#CentralWest
CentralWest <- filter(inf_data, Country_Name %in%
                        c("Sudan", "Ethiopia", "Eritrea", "Djibouti", 
                          "Somalia", "Kenya", "Uganda", "Rwanda", "Tanzania", 
                          "Comoros", "Seychelles", "Madagascar", "Mauritius"))

#Southern
Southern <- filter(inf_data, Country_Name %in%
                     c("Malawi", "Zambia", "Zibambwe", "Namibia", "Swaziland", 
                       "Lesotho", "Botswana", "South Africa", "Angola", "Mozambique"))


#MiddleEast
MiddleEast <- filter(inf_data, Country_Name %in%
                       c("Egypt", "Turkey", "Iran", "Iraq", "Saudi Arabia", 
                         "Yemen", "Syria", "Jordan", "United Arab Emirates", 
                         "Israel", "Libya", "Lebanon", "Oman", "Palestine", "Kuwait", 
                         "Qatar", "Bahrain"))

#Shiite_Majority
Shiite_Majority <- filter(inf_data, Country_Name %in%
                            c("Iran", "Iraq", "Lebanon", "Bahrain"))


#Sunni_Majority
Sunni_Majority <- filter(inf_data, Country_Name %in%
                       c("Egypt", "Turkey", "Saudi Arabia", 
                         "Yemen", "Syria", "Jordan", "United Arab Emirates", 
                         "Israel", "Libya",  "Oman", "Palestine", "Kuwait", 
                         "Qatar"))


