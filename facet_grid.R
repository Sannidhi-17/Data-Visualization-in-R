library(ggplot2)

pl <- ggplot(mpg, aes(x = displ, y = hwy)) + geom_point()

#pl2 <- pl + coord_cartesian(xlim = c(1,4), ylim = c(15,30))
#give the co-ordinates of the x-axis and y-axis

#pl2 <- pl + coord_fixed(ratio = 2/3)
# it will decide the aspect ratio by default ratio = 1
pl2 <-  pl + facet_grid(drv~cyl)
# Simply it will create the the different graph for specific column
print(pl2)