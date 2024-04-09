library(datasets)
air_data<-data.frame(airquality)
s<-split(air_data,air_data$Month)
s
sapply(s,function(x){colMeans(x[,c('Ozone','Solar.R','Wind','Temp')],na.rm=TRUE)})
lapply(s,function(x){colSums(x[,c('Ozone','Solar.R','Wind','Temp')],na.rm=TRUE)})
