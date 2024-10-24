#Function to calculate growth rate
calculate_growth_rate <- function(years, visitors) {
  
  numerator<-visitors[length(visitors)]-visitors[1]
  denominator<-years[length(years)]-years[1]
  yearly_growth_rate<-numerator/denominator
  
  return(yearly_growth_rate) #Omittable
}

#Function to predict the amount of visitors in a given year
predict_visitors <- function(years, visitors, year) {
  growth_rate<-calculate_growth_rate(years,visitors)

  closest_year_index<-which.min(abs(year-years)) #Closest year index #(Could've also used visitors[length(years)]) at the visitors_this_year formula,skipping the two lines above.)
  closest_year<-years[closest_year_index]
  visitors_this_year<-visitors[closest_year_index]+((growth_rate)*(year-years[length(years)]))
  
  return(visitors_this_year) #Omittable
}


visitors <- read.csv("visitors.csv") #Reads csv file
year <- as.integer(readline("Year: ")) #Prompt user for an input
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n")) #Output
