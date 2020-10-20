library(ggplot2)

df <- mtcars

#Data & aesthetics

pl  <- ggplot(df, aes(x = wt, y = mpg))

#Geometry

#p2 <- pl + geom_point(alpha = 0.5, size =)
#p2 <- pl + geom_point(aes(size=cyl)) #another way to plot data
p2 <- pl + geom_point(aes(color=cyl),size=5) + scale_color_gradient(low = ' blue', high = 'red')
print(p2)
