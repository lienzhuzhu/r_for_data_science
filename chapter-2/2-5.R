library(tidyverse)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
    geom_point() +
    geom_smooth(method = "lm")



my_bar_plot <- ggplot(mpg, aes(x = class)) +
    geom_bar() # This gets saved
my_scatter_plot <- ggplot(mpg, aes(x = cty, y = hwy)) +
    geom_point()
ggsave(filename = "mpg-plot.png", plot = my_bar_plot)