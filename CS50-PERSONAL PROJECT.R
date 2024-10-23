#Asking user for the type of beer they want
beer<-tolower(readline("What style of beer would you like?"))
alcohol<-tolower(readline("Do you prefer a high or low alcohol percentage?"))

#Valid beer and alochol entries

valid_beers<-c("belgian ale","weat beer","stout")
valid_alcohol<-c("high","low")

#Conditions for the style of beer and alcohol percentage
if (!(beer %in% valid_beers))
{
  paste0("Unfortunately,we only sell 'belgian ales','weat beers' and 'stouts'")
}else if(!(alcohol %in% valid_alcohol))
  {
  paste0("The only available alcohol options are 'High' and 'Low'")
}else if(beer=="belgian ale" && alcohol=="high")
  {
  paste0("Triple belgian ale")
}else if(beer=="belgian ale" && alcohol=="low")
  {
  paste0("Belgian pale ale")
}else if(beer=="weat beer" && alcohol=="high")
  {
  paste0("Weizenbock")
}else if(beer=="weat beer" && alcohol=="low")
  {
  paste0("Berliner Weisse")
}else if(beer=="stout" && alcohol=="high")
  {
  paste0("Russian Imperial Stout")
}else if(beer=="stout" && alcohol=="low")
  {
  paste0("Dry stout")
  }
