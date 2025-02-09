library(tidyverse)

mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(color = "pink", shape = "triangle")

# Maps color aesthetic to a constant named blue
# Should put manual color setting outside of aes()
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy, color = "blue"))

mpg |> 
    ggplot(aes(x = displ, y = hwy, color = displ < 5)) +
    geom_point()