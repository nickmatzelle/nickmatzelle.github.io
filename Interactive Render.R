install.packages("gganimate") 
install.packages("plotly") 
install.packages("gifski")   # for PCs.
install.packages("transformr")   # for manipulating polygons and paths
install.packages("magick")  # for animation rendering
install.packages("htmltools")  # for html rendering

library(tidyverse)
library(plotly)
library(gganimate)
library(gifski)
library(transformr)
library(magick)
library(htmltools)
theme_set(theme_bw())

data(mtcars)

p <- ggplot(data = mtcars,
            mapping = aes(x = factor(cyl), y = mpg)) +
  geom_boxplot()

p
#The code above creates a box plot

p + facet_wrap(~gear)

#
my_anim <- p + 
  transition_states(gear)

my_anim
# The code above creates a box plot animation
p <- ggplot(cong_dat, 
            aes(x = year, y= seats, 
                fill = party)) +
  geom_bar(stat="identity") +
  geom_hline(yintercept = 217) +  # threshold for having a majority of seats in the house.
  scale_fill_manual(values=c("blue","red"))

p
anim2 <- p + transition_time(year)

anim2
