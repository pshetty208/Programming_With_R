---
title: "Team: Fowler"
output: html_notebook
---
```{r}
install.packages("nycflights13")
```


```{r}
#1. Select just the data for January and compute the daily number of flights. Use ggplot to plot the data.
library ( tidyverse )
library ( lubridate )
library(nycflights13)

flightsEdited <- flights%>%mutate(date = make_date (year , month , day ))

updatedFlightsEdited <- flightsEdited %>%
mutate ( weekday = wday(date , label = TRUE )) %>%
mutate ( month = month(date , label = TRUE ))

flights_jan <- flights %>% filter(month == 1)
daily <- flights_jan%>%group_by( day ) %>%
summarise (n=n ())
head(daily)
ggplot (daily , aes (day , n)) + geom_line ()
```

```{r}
#2. Group the data by weekday and month and visualise which days and months have the most flights going to/from NYC (the main airports to NYC are JFK and LGA).
library ( tidyverse )
library ( lubridate )
flightsEdited <- flights%>%mutate(date = make_date (year , month , day ))

updatedFlightsEdited <- flightsEdited %>% 
  mutate ( weekday = wday(date , label = TRUE )) %>% 
  mutate ( month = month(date , label = TRUE ))

a <- updatedFlightsEdited %>% filter (origin == 'JFK' | origin == 'LGA' | dest == 'LGA' | dest == 'JFK')%>% group_by( weekday, month)%>%summarise(n=n())

ggplot (a , aes ( n,weekday,group = 1 )) + geom_line ()
```

```{r}
#3. Using the cor.test() function, determine the actual correlation score between cyl and disp.

data ("mtcars")
str ( mtcars )
mcor <-cor( mtcars )
round (mcor , digits =2)
install.packages ("corrplot")
library ( corrplot )
corrplot ( mcor )

cor.test(mtcars$cyl,mtcars$mpg)

```

```{r}

```
