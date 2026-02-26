data(iris)
str(iris)
View(iris)
class(iris)
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab="Sepal_Length",
        col='skyblue')
boxplot(Sepal.Length ~ Species,
        data=iris,
        main="Sepal Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c('pink','yellow','skyblue'))
boxplot(iris[,1:4],
        main="Multi Variable Box Plot",
        col=c('pink','green','skyblue','orange'))
#GGPLOT2
library(ggplot2)

ggplot(iris,
       aes(x=Species, y = Sepal.Length))+
  geom_boxplot()

#Coloured box plot by species
ggplot(iris, aes(x=Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_minimal()

#USINF Manual Color Palettes
ggplot(iris, aes(x=Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" = "steelblue",
      virginica = "green"
    )
  ) + 
  theme_minimal()