ggplot(diamonds, aes(x = cut, y = after_stat(prop), group = 1)) + 
    geom_bar()

ggplot(diamonds, aes(x = cut, y = after_stat(prop), group = 1)) + 
    geom_bar()

ggplot(diamonds, aes(x = cut, group = color, fill = color, y = after_stat(prop))) + 
    geom_bar()