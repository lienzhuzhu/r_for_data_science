library(nycflights13)
library(tidyverse)

flights |>
    group_by(carrier) |>
    summarize(
        avg_dep_delay = mean(dep_delay, na.rm = TRUE),
        avg_arr_delay = mean(arr_delay, na.rm = TRUE)
    ) |> 
    arrange(desc(avg_dep_delay))

flights |> 
    group_by(dest) |> 
    slice_max(dep_delay) |>
    relocate(dest, dep_delay)