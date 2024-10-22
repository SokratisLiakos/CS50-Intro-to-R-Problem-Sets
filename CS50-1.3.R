tests<-read.table("tests.tsv",sep="\t",header=TRUE)
#Convert gender from numeric to text
tests$gender<-factor(tests$gender,
                     labels=c("Unanswered","Male","Female","Other"))
#Add columns
tests$E<-((tests$E1+tests$E2+tests$E3)/15)
tests$N<-((tests$N1+tests$N2+tests$N3)/15)
tests$A<-((tests$A1+tests$A2+tests$A3)/15)
tests$C<-((tests$C1+tests$C2+tests$C3)/15)
tests$O<-((tests$O1+tests$O2+tests$O3)/15)
#Round the column elements
tests$extroversion<-round(tests$E,digits=2)
tests$neuroticism<-round(tests$N,digits=2)
tests$agreeableness<-round(tests$A,digits=2)
tests$conscientiousness<-round(tests$C,digits=2)
tests$openness<-round(tests$O,digits=2)

write.csv(tests,"analysis.csv")