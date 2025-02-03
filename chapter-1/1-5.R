library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins |>
    ggplot(aes(x = species, y = body_mass_g)) +
    geom_boxplot()

penguins |>
    ggplot(aes(x = body_mass_g, color = species, fill = species)) +
    geom_density(alpha = 0.5)

ggplot(penguins, aes(x = island, fill = species)) +
    geom_bar(position = "fill")

penguins |>
    ggplot(aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point(aes(shape = island, color = species))

penguins |>
    ggplot(aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point(aes(color = species, shape = species)) +
    facet_wrap(~island)

## Exercises 1.5.5
mpg |>
    ggplot(aes(x = hwy, y = displ, color = cyl, size = cyl)) +
    geom_point()

penguins |>
    ggplot(aes(x = bill_depth_mm, y = bill_length_mm)) +
    geom_point(aes(color = species)) +
    facet_wrap(~species)

ggplot(
    data = penguins,
    mapping = aes(
        x = bill_length_mm, y = bill_depth_mm, 
        color = species, shape = species
    )
) +
    geom_point() +
    labs(color = "Species", shape = "Species")

ggplot(penguins, aes(x = island, fill = species)) +
    geom_bar(position = "fill") # composition of penguins within islands
ggplot(penguins, aes(x = species, fill = island)) +
    geom_bar(position = "fill") # distribution of penguins amongst islands


## Exercises 1.6.1
ggplot(mpg, aes(x = class)) +
    geom_bar()
ggplot(mpg, aes(x = cty, y = hwy)) +
    geom_point() # This gets saved
ggsave("mpg-plot.png")
ggsave("mpg-plot.pdf")