#Ask user for csv file
pitstop.csv<-readline("Enter a valid csv file:")
pitstop<-read.csv(pitstop.csv)
#Print number of rows
rows<-nrow(pitstop)
#Show total number of pit stops
print(paste0("The number of pit stops is:",rows))
#Show duration of shortest pit stop
print(paste0("The shortest pit stop duration is:",min(pitstop$time,na.rm=TRUE)))
#Show duration of longest pit stop
print(paste0("The longest pit stop duration is:",max(pitstop$time,na.rm=TRUE)))
#Show total time spent on pit stops
print(paste0("The amount of time spent on pit stops is:",sum(pitstop$time)))
