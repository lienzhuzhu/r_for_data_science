library(tidyverse)
library(lvplot)
library(ggthemes)

nycflights13::flights |> 
    mutate(
        cancelled = is.na(dep_time),
        sched_hour = sched_dep_time %/% 100,
        sched_min = sched_dep_time %% 100,
        sched_dep_time = sched_hour + (sched_min / 60)
    ) |> 
    ggplot(aes(x = sched_dep_time)) + 
    geom_freqpoly(aes(color = cancelled), binwidth = 1/4) +
    facet_wrap( ~ cancelled, scales = "free_y")

nycflights13::flights |> 
    mutate(
        cancelled = is.na(dep_time),
        sched_hour = sched_dep_time %/% 100,
        sched_min = sched_dep_time %% 100,
        sched_dep_time = sched_hour + (sched_min / 60)
    ) |> 
    ggplot(aes(x = sched_dep_time, y = after_stat(density))) +
    geom_freqpoly(aes(color = cancelled), binwidth = 1, linewidth = 1)

nycflights13::flights |> 
    mutate(
        cancelled = is.na(dep_time),
        sched_hour = sched_dep_time %/% 100,
        sched_min = sched_dep_time %% 100,
        sched_dep_time = sched_hour + (sched_min / 60)
    ) |>
    ggplot(aes(x = cancelled, y = sched_dep_time)) + 
    geom_boxplot()

diamonds |> 
    ggplot(aes(x = fct_reorder(clarity, price, median), y = price)) +
    geom_boxplot()

ggplot(mpg, aes(x = fct_reorder(class, hwy, median), y = hwy)) +
    geom_boxplot() +
    coord_flip()

diamonds |> 
    ggplot(aes(x = cut, y = price)) +
    geom_lv()

diamonds |> 
    ggplot(aes(x = cut, y = price)) +
    geom_violin(aes(color = cut))

diamonds |> 
    ggplot() +
    geom_histogram(aes(x = price)) +
    facet_wrap( ~ cut)

diamonds |> 
    ggplot() +
    geom_freqpoly(aes(x = price, y = after_stat(density), color = cut), binwidth = 1000)

diamonds |> 
    ggplot(aes(x = price)) +
    geom_density(aes(color = cut, fill = cut), alpha = 0.25) +
    scale_color_colorblind()
    