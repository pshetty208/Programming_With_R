---
title: "Team: Fowler, Question:4"
output: html_notebook
---

```{r}
#Exercise: Build a simple linear regression with just the wt variable â€“ how does the quality and fit of the model compare with using all variables and the selected subset using step()? What about other subsets?

data ("mtcars")

#Model 1 with just -> wt
mpgModelWt <-lm( formula =mpg~wt,
data = mtcars )
summary ( mpgModelWt )
plot ( mpgModelWt , which =1)
```
```{r}
#Model 2, Model with all the variables
mpgModel <-lm( formula =mpg~cyl+disp+hp+drat+wt+qsec+vs+am+gear+carb ,
data = mtcars )
summary ( mpgModel )
plot ( mpgModel , which =1)
```

```{r}
#Model 3, Model with subset
reducedModel <-step ( mpgModel , direction ="backward")
summary ( reducedModel )
plot ( mpgModel , which =1)
```

```{r}
#The quality and fit of the model with just wt
mpgPredictions <-data.frame ( mpg= mtcars$mpg , pred = mpgModelWt$fitted.values )
mpgPredictions
ggplot ( data = mpgPredictions , aes(x = mpg , y = pred )) + geom_point() +
geom_abline ( mapping =aes ( slope =1, intercept =0) , color ='red ')
```

```{r}
#The quality and fit of the model with all
mpgPredictions1 <-data.frame ( mpg= mtcars$mpg , pred = mpgModel$fitted.values )
mpgPredictions
ggplot ( data = mpgPredictions1 , aes(x = mpg , y = pred )) + geom_point() +
geom_abline ( mapping =aes ( slope =1, intercept =0) , color ='red ')
```
```{r}
#The quality and fit of the model with subset
mpgPredictions2 <-data.frame ( mpg= mtcars$mpg , pred = reducedModel$fitted.values )
mpgPredictions
ggplot ( data = mpgPredictions2 , aes(x = mpg , y = pred )) + geom_point() +
geom_abline ( mapping =aes ( slope =1, intercept =0) , color ='red ')
```

```{r}
# Answer: 
# After comparing the above three models, by examining the change in R2 and adjusted R2 values of all three regression equations we can conclude that the equation one, that is â€œmpg~wtâ€ is the best one, because the percentage change in R2 and adjusted R2 values is least for this regressionÂ equation.
```
