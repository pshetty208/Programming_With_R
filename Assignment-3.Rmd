---
title: "Team: Fowler"
output: html_notebook
---

```{r}
library(tidyverse)

mpg_t <- as_tibble(mpg)
mpg_t
```

```{r}
#Exercise 1: filter()
#1. Filter rows where the manufacturer is Audi or the year of production (year) is 1999.
filter(mpg, manufacturer == "audi" | year == 1999)
```

```{r}
#2. Filter rows where the year of production (year) is 1999 and the manufacturer is NOT Audi.
filter(mpg, manufacturer != "audi" & year == 1999)
```

```{r}
#Exercise 2: arrange()
#1. To better view the ordered tibble, pipe the results of the arrange function into the function View. Make sure that ties between countries with the same number of gold and silver medals are sorted based on the number of bronze medals.

beijing2022Medals %>%
  arrange (desc ( Gold ), desc ( Silver )) %>%
  arrange (desc (Bronze))
```

```{r}
#Exercise 3: Look at the second page of cheatsheet for useful functions to use with mutate and summarise
#1. How many unique models do each manufacturer produce?
group_by(mpg , manufacturer, model) %>% summarise( count = n())

```

```{r}
#2. Create a new column with a ratio of highway (hwy) vs city (cty) range called
mutate (mpg , HwyCtyRatio= round((hwy/cty),2))
```
