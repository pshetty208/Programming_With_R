---
Title: "Team Fowler"
---
```{r}
install.packages("tm") > library(tm)
docs<-Corpus(DirSource("F:\texts\texts", encoding="UTF-8"))
trumpDTM<-DocumentTermMatrix(docs) 

inspect(trumpDTM[,c("news", "free")])
inspect(trumpDTM[,c("russia")])
```

