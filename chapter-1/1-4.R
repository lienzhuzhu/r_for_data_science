library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins |>
    ggplot(aes(x = species)) +
    geom_bar(na.rm = TRUE)

penguins |>
    ggplot(aes(x = fct_infreq(species))) +
    geom_bar(na.rm = TRUE)


ggplot(penguins, aes(x = body_mass_g)) +
    geom_histogram(binwidth = 200, na.rm = TRUE)

penguins |>
    ggplot(aes(x = body_mass_g)) +
    geom_density(na.rm = TRUE)


## Exercises 1.4.3
penguins |>
    ggplot(aes(y = species)) +
    geom_bar(na.rm = TRUE)

ggplot(penguins, aes(x = species)) +
    geom_bar(color = "red")

penguins |>
    ggplot(aes(x = species)) +
    geom_bar(fill = "red")

ggplot(penguins, aes(x = body_mass_g)) +
    geom_histogram(bins = 70, na.rm = TRUE)

diamonds |>
    ggplot(aes(x = carat)) +
    geom_histogram(binwidth = 0.050)