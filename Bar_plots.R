library(ggplot)

df <- mpg

pl <- ggplot(df, aes(x = class))

#pl + geom_bar(fill = 'pink')
pl + geom_bar(aes(fill = drv), position = 'dodge')
# Position = 'fill'


# Difference b/w histogram and bar data
# y-axis shows the count value 
# Histogram x-axis shows the continuous values
# Bar plot x-axis shows the class value