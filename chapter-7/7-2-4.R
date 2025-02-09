library(tidyverse)

read_csv(
    "x,y\n
    1,'a,b'",
    quote = "\'"
)


# Only 2 columns, each row of values has 3 variables
read_csv(
    "a,b\n
    1,2,3\n
    4,5,6"
)

# Mismatched number of columns
read_csv(
    "a,b,c\n
    1,2\n
    1,2,3,4"
)

# No comma separating the single value
read_csv("a,b\n\"1")

# Successfully parses, but interprets 1 and 2 as chr
read_csv("a,b\n1,2\na,b")

# Interprets as a single column and value because delimiter not specified
read_csv("a;b\n1;3")


annoying <- tibble(
    `1` = 1:10,
    `2` = `1` * 2 + rnorm(length(`1`))
)


annoying |>
    select(`1`)

annoying |> 
    ggplot(aes(x = `1`, y = `2`)) +
    geom_point() +
    geom_smooth()

annoying |> 
    mutate(`3` = `2` / `1`) |> 
    rename(one = `1`, two = `2`, three = `3`)