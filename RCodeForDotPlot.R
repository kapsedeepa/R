#' ---
#' title: " Dot plots"
#' author: "D K"
#' ---
#' 
library(tidyverse)

# Read the mpg dataset
# mpg - Fuel economy data from 1999 to 2008 for 38 popular models of cars
data(mpg)

# Summary statistics of mpg dataset
summary(mpg)

# high way miles per gallon based on manufacturer
ggplot(mpg, aes(x = hwy,  y = reorder(manufacturer,hwy) )) +
  geom_point(shape = 21,
                 fill = "blue",
                 color = "black",
                 size = 3) +
  labs(x = "high way miles",
       title = "high way miles per gallon based on manufacturer") 


# city miles per gallon based on manufacturer
ggplot(mpg, aes(x = cty,  y = reorder(manufacturer,cty) )) +
  geom_point( ) +
  labs(x = "city miles", y = "manufacturer",
       title = "city miles per gallon based on manufacturer") 


# high way miles per gallon based on manufacturer and class- type of car
ggplot(mpg, aes(x = hwy,  y = reorder(manufacturer,hwy) , color = class)) +
  geom_point( ) +
  labs(x = "high way miles per gallon", y ="manufacturer",
       title = "high way miles per gallon based on manufacturer and class- type of car") 
