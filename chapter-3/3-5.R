library(nycflights13)
library(tidyverse)


# 1-5. -----------------

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
    slice_max(arr_delay, n = 1) |>  # Shows the max from each dest
    relocate(dest, arr_delay)

flights |> 
    group_by(dest) |> 
    slice_min(arr_delay, n = -1) |> # Removes the max from each dest
    arrange(dest, desc(arr_delay)) |> 
    relocate(dest, arr_delay)

# 6. -------------------------------
df <- tibble(
    x = 1:5,
    y = c("a", "b", "a", "a", "b"),
    z = c("K", "K", "L", "L", "K")
)

# Expected: the data frame tibble but with a notice that 
# the data is grouped by the y variable
df |>
    group_by(y)

# Expected: rows should be sorted by the y variable, with
# rows with a value of 'a' before those with 'b'
df |> 
    arrange(y)

# Expected: two rows because y only has two levels, each row
# should have a new variable called mean_x
df |>
    group_by(y) |>
    summarize(mean_x = mean(x))

# Expected: 3x2 frame with means of var x for each unique combo
# Result: as expected, but with notice that the z grouping was dropped
df |>
    group_by(y, z) |>
    summarize(mean_x = mean(x))

# Expected: same as last one but without warning, and retained groups
df |>
    group_by(y, z) |>
    summarize(mean_x = mean(x), .groups = "drop")

# Retains the rows, adds to the data frame a new column
# with averages of value x for each combo of y and z
df |>
    group_by(y, z) |>
    mutate(mean_x = mean(x))