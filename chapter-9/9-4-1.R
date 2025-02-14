library(tidyverse)

# It makes a subplot for each value the continuous variable takes
ggplot(mpg, aes(x = displ, y = hwy)) + 
    geom_point() + 
    facet_wrap(~cty)

# It means no rows have values that match those facet cells
ggplot(mpg) + 
    geom_point(aes(x = drv, y = cyl))


ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(drv ~ .) # Column is nothing, Places drv subplots in rows

ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(. ~ cyl) # Matches default behavior


ggplot(mpg, aes(x = displ)) + # I like this one better for histogram for some reason
    geom_histogram() + 
    facet_grid(drv ~ .)

ggplot(mpg, aes(x = displ)) + 
    geom_histogram() +
    facet_grid(. ~ drv)

ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(drv ~ .)

mpg |> 
    ggplot() +
    geom_point(aes(x = displ, y = hwy)) +
    facet_wrap(~drv, nrow = 3, strip.position = "right")