# Create a data visualization on Economist_Assignment_Data file
library(ggplot2)
library(data.table)

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")


df1 <- fread('Economist_Assignment_Data.csv', drop=1)
print(head(df1))


pl <- ggplot(df1, aes(x = CPI, y = HDI, color = Region)) + geom_point(size = 5, shape = 2)

pl1 <- pl + geom_smooth(aes(group = 1), method = 'lm', formula = y~log(x), color = 'red')

pl2 <- pl1 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df1, Country %in% pointsToLabel),check_overlap = TRUE)

pl3 <- pl2 + scale_x_continuous(limits = c(0.9,10,0.5), breaks = 1:10)

print(pl3)