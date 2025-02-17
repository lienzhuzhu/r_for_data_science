library(tidyverse)

mpg |> 
    ggplot(aes(x = cty, y = hwy)) +
    geom_point(aes(shape = drv, color = drv)) +
    labs(
        x = "City MPG",
        y = "Highway MPG",
        shape = "Type of drive train",
        color = "Type of drive train"
    )