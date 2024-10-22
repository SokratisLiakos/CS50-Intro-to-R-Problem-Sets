#Copy and pasted code from cs50 site
art <- data.frame(
  A = c("GR", "GR", "GR", "GR", "GR"),
  B = c("AL","AL","AL", "AL", " "),
  C = c("SK", "SK", "SK", " ", " "),
  D = c("BU", "BU", " ", " ", " "),
  E = c("TR", " ", " ", " ", " ")
)


#Create new column
art$F<-c("B","A","L","K","A")

#Renaming columns
colnames(art)<-c("greece","albania","skopje","bulgaria","turkey","serbia")

#Create new row
new_row<-c("G","R","E","E","C","E")
art<-rbind(art,new_row)
print(art)
