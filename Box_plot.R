library(ggplot2)

df <- mtcars

pl <- ggplot(df, aes(x = factor(cyl), y= mpg))

#pl + geom_boxplot() + coord_flip() # change the coordinates
pl + geom_boxplot(aes(fill = factor(cyl)))
#X-axis value should be continuous
# box plot are useful to detect the how many outlier in you data
