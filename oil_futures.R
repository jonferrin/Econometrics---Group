
#API Key for Quandl
#API KEY1 = D7CTwvHDyicCWMRDi9_6 "
#API KEY2 = mXgZuw-YZ-CL3aKbcKf2

#Load Libraries & API key
library(dygraphs)
library(Quandl)
Quandl.api_key(mXgZuw-YZ-CL3aKbcKf2)

#Format dates for Quandl function
from.dat <- as.Date("01/01/2010", format="%d/%m/%Y")
to.dat <- as.Date("01/01/2020", format="%d/%m/%Y")
crude.oil.futures<-Quandl("CHRIS/CME_CL1", start_date = from.dat, end_date = to.dat, type="xts")
oil_plot <- plot(crude.oil.futures$Last)
print(oil_plot)



View(crude.oil.futures)

CrimePlot <- ggplot(data = my_data, aes(x = crime_per_capita, y = median_price, color=crime_per_capita))+
  geom_point()+
  labs( x= "Crime per Capita", y= "Home Prices", title = "Severe Crime Appears Socioeconomic", subtitle = "Graph 1")+
  scale_color_viridis()+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))
print(CrimePlot)
ggsave("CrimePlot.png", plot = CrimePlot)


#Other Variations

#library(Quandl)
#Quandl.api_key(D7CTwvHDyicCWMRDi9_6)
#from.dat <- as.Date("01/01/2010", format="%d/%m/%Y")
#to.dat <- as.Date("01/01/2011", format="%d/%m/%Y")
#crude.oil<-Quandl("CHRIS/CME_CL1", start_date = from.dat, end_date = to.dat, type="xts")
#oil_plot <- plot(crude.oil.futures$Last)
#print(oil_plot)
