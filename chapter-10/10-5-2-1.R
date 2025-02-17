library(tidyverse)

diamonds |> 
    count(color, cut) |>  
    group_by(cut) |> 
    mutate(prop = n / sum(n)) |> 
    ggplot(aes(x = color, y = cut)) +
    geom_tile(aes(fill = prop))