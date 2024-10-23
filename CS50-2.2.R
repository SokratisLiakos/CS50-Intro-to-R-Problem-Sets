#Asking the user about his caffeine/flavour preference
flavor<-readline("Flavor:")
caffeine<-readline("Caffeine:")

#Conditions for the user's input
if (flavor!="Bold" && flavor!="Light")
{
  cat("Enter either 'Bold' or 'Light' for flavor.")
  
} else if (caffeine!="Yes" && caffeine!="No")
{
  paste0("Enter either 'Yes' or 'No' for caffeine.")
} else if(flavor=="Bold" && caffeine=="Yes")
{
  paste0("You might like black tea.")
} else if(flavor=="Light" && caffeine=="Yes")
{
  paste0("You might like green tea.")
} else if(flavor=="Bold" && caffeine=="No")
{
  paste0("You might like rooibos.")
} else{
  paste0("You might like chamomile. ")
}
