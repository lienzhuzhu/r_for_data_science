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

ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_smooth(aes(color = drv), show.legend = TRUE, se = FALSE)


mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(size = 3) +
    geom_smooth(se = FALSE)

mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(size = 3) +
    geom_smooth(aes(group = drv), se = FALSE)

mpg |> 
    ggplot(aes(x = displ, y = hwy, color = drv)) +
    geom_point(size = 3) +
    geom_smooth(aes(group = drv), se = FALSE)

mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(size = 3, aes(color = drv)) +
    geom_smooth(se = FALSE)

mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(size = 2, aes(color = drv)) +
    geom_smooth(se = FALSE, aes(linetype = drv))

mpg |> 
    ggplot(aes(x = displ, y = hwy)) +
    geom_point(
        size = 5, color = "white"
    ) +
    geom_point(
        aes(color = drv),
        size = 2
    )