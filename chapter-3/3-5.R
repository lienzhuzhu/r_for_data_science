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
    slice_max(dep_delay, n = 1) |>
    relocate(dest, dep_delay)

flights |> 
    group_by(hour) |>
    summarize(avg_dep_delay = mean(dep_delay, na.rm = TRUE)) |>
    ggplot(aes(x = hour, y = avg_dep_delay)) +
        geom_smooth(na.rm = TRUE)

flights |>
    group_by(dest) |>
    arrange(desc(arr_delay)) |> 
    slice_max(arr_delay, n = -240) |>
    relocate(arr_delay, dest, tailnum)

flights |>
    group_by(dest) |>
    arrange(desc(arr_delay)) |> 
    slice_max(arr_delay, n = -245) |>
    relocate(arr_delay, dest, tailnum)

flights |> 
    filter(dest == "ABQ") |> 
    arrange(desc(arr_delay)) |> 
    relocate(arr_delay)

flights |> 
    filter(dest == "ABQ") |> 
    arrange(desc(arr_delay)) |> 
    relocate(arr_delay)

flights |>
    filter(dest == "ABQ") |>
    distinct(dest, arr_delay) |> 
    arrange(desc(arr_delay))

flights |> 
    filter(dest == "ABQ") |> 
    arrange(desc(arr_delay)) |> 
    relocate(arr_delay)