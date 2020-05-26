library(mosaic)
library(pander)
library(readr)
library(tidyverse)
library(knitr)
library(ggplot2)
library(viridis)

library(readxl)

GDP <- read_xls('C:/Users/jscot/Documents/Econometrics_R/Real GDP growth (Annual percent change).xls')

Countries <- select(GDP, c("Year", "Angola", "Venezuela", "United States", "Saudi Arabia"))

Plot1 <-        ggplot(data = Countries, aes(x = Year, y = Angola, color=Angola)) +
                geom_line()+
                scale_color_viridis()+
                theme_bw()+
                labs(x="Years", y="GDP Year over Year Growth", title = "Angola and Oil Boom", subtitle = "Graph 1")+
                theme(plot.title = element_text(hjust = 0.5))
print(Plot1)                 


DistancePlot <- ggplot(data = my_data, aes(x = distance, y = median_price, color=distance))+ 
                geom_point()+
                scale_color_viridis()+
                theme_bw()+
                labs(x="Miles from Work", y="House Prices (Thousands)", title = "People Don't Mind Travelling", subtitle = "Graph 3")+
                theme(plot.title = element_text(hjust = 0.5))
print(DistancePlot)
ggsave("DistancePlot.png", plot = DistancePlot)

