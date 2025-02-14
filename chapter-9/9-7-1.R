library(tidyverse)

ggplot(diamonds, aes(x = "", fill = cut)) +
    geom_bar() +
    labs(x = "Diamonds") +
    coord_polar(theta = "y")

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
    geom_point() + 
    geom_abline(intercept = 8) +
    coord_fixed()