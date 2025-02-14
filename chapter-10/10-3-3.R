library(tidyverse)

diamonds |> 
    ggplot(aes(x = x)) +
    geom_histogram(binwidth = 0.5) +
    coord_cartesian(xlim = c(0,9))

diamonds |> 
    ggplot(aes(x = y)) +
    geom_histogram(binwidth = 0.5) +
    coord_cartesian(xlim = c(0,9))

diamonds |> 
    ggplot(aes(x = z)) +
    geom_histogram(binwidth = 0.25) +
    coord_cartesian(ylim = c(0,9))

diamonds |> 
    ggplot(aes(x = price)) +
    geom_histogram(binwidth = 200)

diamonds |> 
    filter(carat == 0.99) |> 
    nrow()

ggplot(diamonds, aes(x = y)) + 
    geom_histogram(binwidth = 0.5) +
    coord_cartesian(ylim = c(0, 50))

ggplot(diamonds, aes(x = y)) + 
    geom_histogram() +
    ylim(0, 50)