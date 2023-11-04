---
title: "Team: Fowler, Question:3"
output: html_notebook
---

```{r}
#Exercise:- Have a look at the â€˜faithfulâ€™ dataset (use the help ?faithful to find out more about the dataset). Use the lm() function to build a simple regression model to predict the eruption time based on the waiting time to the next eruption. What is the predicted eruption time given a waiting time of 80 mins?
library ( tidyverse )
data ("faithful")
str (faithful)
```

```{r}
summary ( faithful )
```
```{r}
#The scatterplot
ggplot ( data = faithful , aes(x = waiting , y = eruptions)) + geom_point ()
```
```{r}
#The lm() function to build a simple regression model to predict the eruption time based on the waiting time to the next eruption
faithfulModel = lm(eruptions~waiting, data=faithful)
summary ( faithfulModel )
```

```{r}
#The model
ggplot ( data = faithful , aes(x = waiting , y = eruptions ))+geom_point()+geom_abline ( mapping=aes ( slope = faithfulModel$coefficients[2],intercept = faithfulModel$coefficients[1]), color='red')
```

```{r}
#Residual values
plot ( faithfulModel , which =1)
```
```{r}
#The diagnostic
layout ( matrix (1:6 , ncol =2, byrow = TRUE ))
plot ( faithfulModel , 1:6)
```
```{r}
#The predicted eruption time given a waiting time of 80 mins is 4.17622
eurption <-data.frame ( waiting = 80)
predict ( faithfulModel , newdata = eurption )
```
```{r}
# The avg eruption time lies between 4.104848 and 4.247592 if waiting time is 80 mins
predict ( faithfulModel , newdata = eurption , interval ="confidence")
```

```{r}
# The eruption time lies between 3.196089 and 5.156351 for 95% of the cases where the waiting time is 80 mins
predict ( faithfulModel , newdata = eurption , interval ="prediction")
```
