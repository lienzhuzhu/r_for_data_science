library(tidyverse)

diamonds |> 
    mutate(y = if_else(y < 3 | y > 20, NA, y)) |> 
    summarize(mean_value = mean(x))

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