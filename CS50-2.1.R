#Read the given csv files

books<-read.csv("books.csv")
authors<-read.csv("authors.csv")

#Find the Writer's book by Mia Morgan

the_writer_book<-subset(books,author=="Mia Morgan")

#Find the Musician's book

the_musician_book<-subset(books,year=="1613")

#Find the Traveler's book

the_traveler_book<-subset(books,(author=="Elena Petrova" | author=="Lysandra Silverleaf") & year=="1775")

#Find the Painter's book

the_painter_book<-subset(books,(pages>200 & pages<300)&(year==1990 | year==1992))

#Find the Scientist's book

the_scientist_book<-subset(books,grepl("Quantum Mechanics",title))

#Merging both csv files based on author

books_authors<-merge(books,authors,by="author")

#Find the Teacher's book

the_teacher_book<-subset(books_authors,(year>=1700 & year<=1799 & hometown=="Zenthia"))
