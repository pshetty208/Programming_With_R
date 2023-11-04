---
title: "Assignment 01 - Data Science (Winter Sem 2022/23) team name: FOWLER"
output: html_notebook
---

## 3.1 Vectors


1. Create the following vector x = (1.2 2.3 0.2 1.1)
```{r}
x <- c(1.2, 2.3, 0.2, 1.1)
```

2. Check the class of the vector using the class() function.
```{r}
class(x)
```

3. Output the second element of the vector.
```{r}
x[2]
```

4. Output the elements 2 and 3 of the vector.
```{r}
x[c(2,3)]
```

5. Replace the value of the first element of the vector.
```{r}
x[1] <- 8.8
x
```

6. Select all elements where the value is greater than 2.
```{r}
x[x>2]
```

7. One very helpful feature of vectors is that if we apply functions they will typically be carried out on all of the vectors. Square each value of x and assign it to a new variable called x.squared().
```{r}
x.squared <- x^2
x.squared
```

8. Append the value 5.2 to x.
```{r}
x <- append(x, 5.2)
x
```

9. Compute the mean value of the updated vector x and check its length.
```{r}
mean <- mean(x)
mean
l<- length(x)
l
```

10. Create a named vector containing the number of days of each month. Further,
calculate the number of days in a year.
```{r}
v <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(v) <- c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
v
s <- sum(v)
s
```




## 3.2 Matrices

```{r}
P = matrix (
            c(2, 4, 3, 1, 5, 7),
            nrow=2, ncol=3, 
            byrow = TRUE)

P
```


1. Sum the values in the first row.
```{r}
sr <- sum(P[c(1),])
sr
```

2. Sum the values in the first column.
```{r}
sc <- sum(P[,c(1)])
sc
```

3. Specifiy names for rows (â€œRow1, Rowâ€) and columns (â€œCol1â€, â€œCol2â€).
```{r}
rownames(P) <- c('Row1', 'Row2')
rownames(P)
colnames(P) <- c('Col1', 'Col2', 'Col3')
colnames(P)
```

4. Select the second row in the matrix p using its name (â€œRow2â€).
```{r}
P["Row2",]
```

5. Remove the third column from matrix p.
```{r}
P <- P[,-c(3)]
P
```

6. Add the column back again.
```{r}
P <- cbind(P,c(3,7))
P
```

7. Create a matrix to represent the medal table for the 2022 Beijing Winter Olympics shown here: https://olympics.com/en/olympic-games/beijing-2022/medals. If you just want to use the first few countries thatâ€™s fine. Assign names to the (Country) rows and medal type (columns).
```{r}
A = matrix(
  c(1,2,1,7,7,4,0,2,0,1,0,1,4,8,14),
  nrow = 5,  
  ncol = 3,        
  byrow = TRUE         
)

rownames(A) = c("Australia", "Austria", "Belarus","Belgium","Canada")

colnames(A) = c("Gold", "Silver", "Bronze")
  
A
```



## 3.3 Lists

```{r}
a<-list("a", 1, c(4,5,6))
a
```

1. Return the elements 1 and 3 as a list.
```{r}
a[c(1, 3)]
```

2. Provide each element position a name (e.g., â€œOneâ€, â€œTwoâ€, â€œThreeâ€).
```{r}
a<-list(One="a",Two= 1,Three= c(4,5,6))
```

3. Select the first and third element using their name.
```{r}
a[c("One", "Three")]
```
