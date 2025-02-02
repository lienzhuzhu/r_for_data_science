library(tidyverse)
library(palmerpenguins)
library(ggthemes)

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
    ) + geom_point(mapping = aes(color = species, shape = species), na.rm = TRUE) +
        geom_smooth(method = "lm") +
        labs(
            title = "Body Mass and Flipper Length",
            subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
            x = "Flipper Length (mm)", y = "Body Mass (g)",
            color = "Species", shape = "Species"
        ) +
        scale_color_colorblind()

ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
    ) + geom_point(na.rm = TRUE) +
        geom_smooth(method = "lm") +
        labs(
            title = "Bill Depth and Bill Length",
            subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
            x = "Bill Length (mm)", y = "Bill Depth (mm)",
            color = "Species", shape = "Species"
        ) +
        scale_color_colorblind()