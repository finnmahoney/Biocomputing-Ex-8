iris_data <- read.csv('iris.csv', stringsAsFactors = FALSE)

cat("Last 2 rows in the last 2 columns:\n")
print(iris_data[(nrow(iris_data)-1):nrow(iris_data), (ncol(iris_data)-1):ncol(iris_data)])

cat("Number of observations for each species:\n")
print(table(iris_data$Species))

iris_wide_sepal <- iris_data[iris_data$Sepal.Width > 3.5, ]
cat("Rows with Sepal.Width > 3.5:\n")
print(iris_wide_sepal)


setosa_data <- iris_data[iris_data$Species == 'setosa', ]
write.csv(setosa_data, file = 'setosa.csv', row.names = FALSE)

virginica_petal_length <- iris_data[iris_data$Species == 'virginica', 'Petal.Length']
mean_virginica <- mean(virginica_petal_length)
min_virginica <- min(virginica_petal_length)
max_virginica <- max(virginica_petal_length)

cat("Statistics for Petal.Length of virginica:\n")
cat("Mean:", mean_virginica, "\n")
cat("Min:", min_virginica, "\n")
cat("Max:", max_virginica, "\n")

