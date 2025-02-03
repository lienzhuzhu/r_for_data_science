library(tidyverse)
library(palmerpenguins)
library(ggthemes)

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) + 
    geom_point(mapping = aes(color = species, shape = species), na.rm = TRUE) +
    geom_smooth(method = "lm") +
    labs(
        title = "Body Mass and Flipper Length",
        subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
        x = "Flipper Length (mm)", y = "Body Mass (g)",
        color = "Species", shape = "Species",
        caption = "Data come from the palmerpenguins package"
    ) +
    scale_color_colorblind()

ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
) + 
    geom_point(na.rm = TRUE) +
    geom_smooth(method = "lm") +
    labs(
        title = "Bill Depth and Bill Length",
        subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
        x = "Bill Length (mm)", y = "Bill Depth (mm)",
        color = "Species", shape = "Species"
    ) +
    scale_color_colorblind()

ggplot(
    data = penguins,
    mapping = aes(x = species, y = bill_depth_mm)
) +
    geom_boxplot(mapping = aes(color = species), na.rm = TRUE) + 
    scale_color_colorblind()

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
    geom_point(na.rm = TRUE, mapping = aes(color = bill_depth_mm)) +
    geom_smooth(method = NULL)


ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
    geom_point() +
    geom_smooth(se = FALSE) +
    labs(
        color = "Island of Origin"
    )

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
    geom_point() +
    geom_smooth() +
    labs(
        title = "Global Aesthetics"
    )

ggplot() +
    geom_point(
        data = penguins,
        mapping = aes(x = flipper_length_mm, y = body_mass_g)
    ) +
    geom_smooth(
        data = penguins,
        mapping = aes(x = flipper_length_mm, y = body_mass_g)
    ) +
    labs(
        title = "Local Aesthetics"
    )