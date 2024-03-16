#scatter, line, Bar

# scatter plot
x = 1:10
y = x^2
plot(y)

#wt vs mpg (miles per gallon)

plot(mtcars$wt,mtcars$mpg,
     main="scatterplot Example",
     xlab= "car weight", ylab= "Miles per gallon", pch = 19)

#line plot
plot(x,y,type="l",xlab = "x", ylab= "y", main = "lineplot")

#bar plot(H, names.arg, xlab,ylab, main, names.arg, col)colour
H = c(7,12,28,3,41)
M = c("Mar","Apr","May","Jun","Jul")
barplot(H,names.arg= M,xlab= "Month",ylab="Revenue",col="pink", main = "revenue chart")


#ggplot = multiple plot

