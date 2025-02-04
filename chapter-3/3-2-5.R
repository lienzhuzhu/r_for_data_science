library(nycflights13)
library(tidyverse)

## Exercises 3.2.5
flights |>
    filter(dep_delay >= 120) |>
    relocate(dep_delay)

flights |>
    filter(dest %in% c("IAH", "HOU")) |>
    glimpse()


flights |>
    filter(carrier %in% c("UA", "AA", "DL")) |>
    glimpse()

flights |>
    filter(month %in% c(7, 8, 9))

flights |>
    filter(dep_delay <= 0 & arr_delay >= 120) |>
    glimpse()

# Delayed by >= 1 but made up over 30 minutes in flight
# My interpretation: Arrived only 30 minutes or less after sched
# arr time, in other words, an arr_delay of at most 30 minutes
flights |>
    filter(dep_delay >= 60 & arr_delay <= 30) |>
    glimpse()

# Corrected: air speed made up 30 minutes, might arrive later than
# 30 minutes after scheduled arrival
flights |>
    filter(dep_delay >= 60 & dep_delay - arr_delay > 30) |>
    glimpse()

flights |>
    arrange(desc(dep_delay)) |>
    arrange(dep_time, sched_dep_time)

flights |>
    mutate(speed = distance / air_time) |>
    arrange(desc(speed)) |>
    relocate(speed, carrier, flight)

flights |>
    distinct(year, month, day) |>
    nrow()

flights |>
    count(year, month, day)

flights |>
    arrange(desc(distance)) |>
    relocate(distance, carrier, flight, origin, dest)

flights |>
    arrange(distance) |>
    relocate(distance, carrier, flight, origin, dest)