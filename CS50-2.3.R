#Reads csv files
bus<-read.csv("bus.csv")
rail<-read.csv("rail.csv")

#Asks the user to choose a route

route<-readline("Route:")

#Computes reliability of routes and adds a reliability percentage column in the data frame
bus$bus_reliability_percentage<-(bus$numerator/bus$denominator)*100
rail$rail_reliability_percentage<-(rail$numerator/rail$denominator)*100

#Computes mean reliability percentage
bus_mean_peak_reliability<-round(mean(bus$bus_reliability_percentage[bus$route==route & bus$peak=="PEAK"],na.rm=TRUE))
rail_mean_peak_reliability<-round(mean(rail$rail_reliability_percentage[rail$route==route & rail$peak=="PEAK"],na.rm=TRUE))
bus_mean_offpeak_reliability<-round(mean(bus$bus_reliability_percentage[bus$route==route & bus$peak=="OFF_PEAK"],na.rm=TRUE))
rail_mean_offpeak_reliability<-round(mean(rail$rail_reliability_percentage[rail$route==route & rail$peak=="OFF_PEAK"],na.rm=TRUE))

#Conditions for the chosen route
if(!(route %in% bus$route || route %in% rail$route)){
  
  cat("Enter a valid route.")
  
} else if(route %in% bus$route)
{
  print(paste0("On time",bus_mean_peak_reliability,"% of the time during peak hours.\n"))
  print(paste0("On time",bus_mean_offpeak_reliability,"% of the time during off-peak hours.\n"))
  
}else if(route %in% rail$route)
{
  cat(paste0("On time ",rail_mean_peak_reliability,"% of the time during peak hours.\n"))
  cat(paste0("On time ",rail_mean_offpeak_reliability,"% of the time during off-peak hours.\n"))
  
}
