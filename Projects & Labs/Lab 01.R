#Some commands may be put as a comment
#after they are used, to reduce clutter
View(iris)
summary(iris)
with(iris, tapply(Petal.Length, Species, mean))
with(iris, tapply(Petal.Length, Species, summary))
with(iris, tapply(Petal.Width, Species, mean))
