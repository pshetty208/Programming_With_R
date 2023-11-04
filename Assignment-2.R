---
title: "Assignment-2, Team:FOWLER"
output: html_notebook
---
1. Select the first and third rows and the first and third columns
```{r}
medals <-data.frame ( Country =c("NOR", "GER", "CHN"),
Gold =c(16 ,12 ,9) ,
Silver =c(8 ,10 ,4) ,
Bronze =c(13 ,5 ,2))

df1 = medals[c(1,3),c(1,3)]
df1
```
2. Return a data frame that contains just the CHN row.
```{r}
df2 <- medals[medals$Country == 'CHN',]
df2
```
3. Return a data frame that contains the medals of Norway and Germany.
```{r}
df3 <- medals[medals$Country == c('NOR','GER'),]
df3
```
4. Select countries who won ten or more gold medals and return the Country and Gold columns using the subset() command.
```{r}
df4 <- subset(medals, Gold >= 10)[c("Country","Gold")]
df4
```
5. Sort the medals by bronze (descending).
```{r}
df5 <- medals[order(-medals$Bronze),]
df5
```

1. Similar to what we did before try and compute the total number of medals won for each country and add this as a fifth column to beijing2022Medals.
```{r}
beijing2022Medals <-read.csv( "Beijing2022.csv", header = TRUE, stringsAsFactors = FALSE)
library(stringr)
a <- str_split_fixed(beijing2022Medals$Country,";",4)
colnames(a) <- c("Country","Gold","Silver","Bronze")
df6 <- data.frame(a)

df6["Gold"] <- as.numeric(unlist(df6["Gold"]))
df6["Silver"] <- as.numeric(unlist(df6["Silver"]))
df6["Bronze"] <- as.numeric(unlist(df6["Bronze"]))
df6$Total = rowSums(df6[,c(2,3,4)])
df6
```

2. Order the rows by the total number of medals won.
```{r}
df7 <- df6[order(df6$Total),]
df7
```
3. Sort the data first by the number of total medals won (in descending order) and then by the number of gold medals won (also in descending order).
```{r}
df8 <- df6[order(-df6$Total,-df6$Gold),]
df8
```
4. Calculate the total number of gold, silver and bronze medals won at Beijing 2022.
```{r}
gold <- sum(df6$Gold)
silver <- sum(df6$Silver)
bronze <- sum(df6$Bronze)
gold
silver
bronze
```
5. Work out the overall number of medals won by all countries in the Olympic Games in 2022?
```{r}
all <- sum(df6$Total)
all
```

