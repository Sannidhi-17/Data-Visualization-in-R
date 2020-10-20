# Step-1 install ggplot2-->install.packages('ggplot2')
# step-2 install ggplot2movies --> install.packages(ggplot2movies)

library(ggplot2)
library(ggplot2movies)

# Data  & Aesthetic
pl <- ggplot(movies, aes(x = rating))

# Geometry
#pl2 <- pl + geom_histogram(binwidth = 1, color= 'blue', fill = 'red',alpha = 0)
pl2 <- pl + geom_histogram(binwidth = 1,aes(fill =..count..))  # Histogram advance

print(pl2 + xlab('movie ratings') + ylab('count') + ggtitle('histogram of movie count'))
