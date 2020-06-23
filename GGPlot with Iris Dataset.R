library('ggplot2')

data("iris")
head("iris")

#Basic scatter ggplot
plot(iris#Sepal.Length~iris$Petal.Length)
     
#Scatter Plot with labels and Color added
plot(iris$Sepal.Length~iris$Petal.Length,ylab="Sepal Length",xlab="Petal Length",main="Sepal Length vs. Petal Length",col="blue",pch=16)

#Univariate analysis with a histogram
hist(iris$Sepal.Width,xlab="Sepal Width",main="Distribution of Sepal Width",col="aquamarine",pch=10)

#Create a boxplot of Sepal Length
boxplot(iris$Sepal.Length~iris$Species,xlab="Species",ylab="Sepal Length",main="Sepal Length of Different Species",col="pink")

#Switch to working with ggplot2
ggplot(data=iris,aes(y=Sepal.Length,x=Petal.Length,col=Species))+geom_point()
