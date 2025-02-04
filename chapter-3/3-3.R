library(nycflights13)
library(tidyverse)

flights |>
    select(dep_time, sched_dep_time, dep_delay)

flights |>
    select(tailnum, tailnum, tailnum) # dplyr automatically skips repeated selection

variables <- c("year", "month", "day", "dep_delay", "arr_delay")
flights |>
    select(any_of(variables))

flights |> select(contains("TIME", ignore.case = FALSE))

flights |>
    rename(air_time_min = air_time) |>
    relocate(air_time_min)

# flights |>
#     select(tailnum) |>
    # arrange(arr_delay)

flights |>
    filter(dest == "IAH") |>
    mutate(speed = distance / air_time) |>
    arrange(desc(speed)) |>
    select(year:day, dep_time, carrier, flight, speed)


flights |> 
    group_by(month) |> 
    summarize(
        avg_delay = mean(dep_delay, na.rm = TRUE),
        n = n()
    )