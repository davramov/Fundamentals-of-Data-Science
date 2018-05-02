library(ggplot2)
iris <- read.csv("iris.csv",header=T)
summary(iris)

plot(x=iris$sepal.length.in.cm,
     y=iris$sepal.width.in.cm,
     main="Sepal Length vs Sepal Width",
     sub="",
     xlab="Sepal Length (cm)",
     ylab="Sepal Width (cm)",
     #xlim=c(xmin, xmax), ylim=c(ymin, ymax)
     data=iris)

e <- ggplot(iris, aes(sepal.length.in.cm,sepal.width.in.cm, color=class))
e + geom_point() + labs(x = "Sepal Length (cm)")+ labs(y = "Sepal Width (cm)") + labs(title = "Scatterplot of Sepal Length vs. Sepal Width Categorized by Iris Class")

e <- ggplot(iris, aes(petal.length.in.cm,petal.width.in.cm, color=class))
e + geom_point() + labs(x = "Petal Length (cm)")+ labs(y = "Petal Width (cm)") + labs(title = "Scatterplot of Petal Length vs. Petal Width Categorized by Iris Class")

h1 <- ggplot(iris, aes(sepal.length.in.cm))
h1 + geom_histogram(binwidth = 0.1) + labs(x = "Sepal Length (cm)")

h2 <- ggplot(iris, aes(sepal.width.in.cm))
h2 + geom_histogram(binwidth = 0.1) + labs(x = "Sepal Width (cm)")

h3 <- ggplot(iris, aes(petal.length.in.cm))
h3 + geom_histogram(binwidth = 0.1) + labs(x = "Petal Length (cm)")

h4 <- ggplot(iris, aes(petal.width.in.cm))
h4 + geom_histogram(binwidth = 0.1) + labs(x = "Petal Width (cm)")


ggplot(iris, aes(x = class, y = sepal.length.in.cm)) + geom_boxplot() + ggtitle("Sepal Length Boxplots, Arranged by Iris Class") + xlab("Class") + ylab("Sepal Length (cm)")

ggplot(iris, aes(x = class, y = petal.length.in.cm)) + geom_boxplot() + labs(title = "Petal Length Boxplots, Arranged by Iris Class") + xlab("Class") + ylab("Petal Length (cm)")

       