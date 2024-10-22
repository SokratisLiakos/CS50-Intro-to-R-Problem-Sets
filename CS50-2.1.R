#Read the given csv files
books<-read.csv("books.csv")
authors<-read.csv("authors.csv")

#Find the Writer's book by Mia Morgan

the_writer_book<-subset(books,author=="Mia Morgan")

#Find the Musician's book

the_musician_book<-subset(books,year=="1613")

#Find the Traveler's book

the_traveler_book<-subset(books,(author=="Elena Petrova" | author=="Lysandra Silverleaf") & year=="1775")

#