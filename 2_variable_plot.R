library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x = year, y = rating))
#pl + geom_bin2d(bin_width = c(3,1)) + scale_fill_gradient(high = 'red', low = 'yellow')

#install.packages('hexbin')
pl + geom_hex() + scale_fill_gradient(high = 'red', low = 'yellow')
