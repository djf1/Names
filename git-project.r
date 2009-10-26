# git project

names <- read.csv("baby-names.csv", header = T, stringsAsFactors = F)

# extracting all data related to my name
delma <- subset(names, name == "Delma" & sex == "girl")

# plotting my name's popularity over time
library(ggplot2)
qplot(year, prop, data = delma, geom = "line", main = "Percentage of children named Delma, by year")


# for later
both_names <- rbind(my_name, second_name)

qplot(year, percent, data = both_names, geom = "line", colour = name, main = "Popularity of group member names over time")
ggsave("names.pdf", width = 5, height = 4)
