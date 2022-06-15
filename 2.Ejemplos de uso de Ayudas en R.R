a <- ggplot(economics , aes(date, unemploy))
a
a + geom_ribbon(aes(ymin=unemploy - 1500,ymax=unemploy + 1500))


b <- ggplot(seals, aes(x = long, y = lat))
b+ geom_curve(aes(yend = lat + 1,
                  xend=long+1,curvature=-1))


x <- economics
y <- seals

?seals
?geom_curve

#######################################################

b <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
b
df <- data.frame(x1 = 2.62, x2 = 3.57, y1 = 21.0, y2 = 15.0)
b +
  geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2, colour = "curve"), data = df)+
  geom_segment(aes(x = x1, y = y1, xend = x2, yend = y2, colour = "segment"), data = df)

b + geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2), data = df, curvature = -0.5)
b + geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2), data = df, curvature = 1)












