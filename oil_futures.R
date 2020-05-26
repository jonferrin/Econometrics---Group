

' API KEY = D7CTwvHDyicCWMRDi9_6 "
library(ggplot)
library(Quandl)
Quandl.api_key(D7CTwvHDyicCWMRDi9_6)
from.dat <- as.Date("01/01/2010", format="%d/%m/%Y")
to.dat <- as.Date("01/01/2020", format="%d/%m/%Y")
crude.oil.futures<-Quandl("CHRIS/CME_CL1", start_date = from.dat, end_date = to.dat, type="xts")
plot(crude.oil.futures$Last)

library(Quandl)
Quandl.api_key(D7CTwvHDyicCWMRDi9_6)
from.dat <- as.Date("01/01/2010", format="%d/%m/%Y")
to.dat <- as.Date("01/01/2011", format="%d/%m/%Y")
crude.oil<-Quandl("CHRIS/CME_CL1", start_date = from.dat, end_date = to.dat, type="xts")
plot(crude.oil.futures$Last)
