library(tidyverse)

ggplot(mpg, aes(x = cty, y = hwy)) + 
    geom_point()

mpg |> 
    select(cty, hwy)

mpg |> 
    ggplot(aes(x = cty, y = hwy)) +
    geom_jitter()


ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point()
ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(position = "identity") # No difference, this is the default


mpg |> 
    ggplot() +
    geom_boxplot( aes(x = trans, y = hwy) )