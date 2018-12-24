#Author: Kushal Hebbar
#Purpose: To plot a degree distribution histogram
#Date: 5th October, 2018

rm(list = ls())

library("igraph")
library("ggplot2")

G <- graph.data.frame(final)

degrees <- degree(G)
degree.frequency <- as.data.frame(table(degrees))

degree.frequency[,1] <- as.numeric(degree.frequency[,1])

ggplot(degree.frequency, aes(x = degrees, y = Freq)) +
  geom_bar(stat = "identity") +
  scale_x_continuous("Degree of nodes",
                     breaks = c(1, 3, 10, 30, 100, 300),
                     trans = "log10") +
  scale_y_continuous("Frequency",
                     breaks = c(1, 3, 10, 30, 100, 300, 1000, 2500, 8000),
                     trans = "log10") +
  ggtitle("Degree Distribution histogram")