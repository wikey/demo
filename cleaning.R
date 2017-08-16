# Use "#" at the begining of the line to indicate comments.
# Those lines will be ignored by R when running the script.

data <- read.csv(file = "~/Desktop/OSFworkshop/raw_data.csv", header = TRUE)

data[data < 0] <- NA
data <- data[c(-15)]

clean_data.csv <- write.csv(data, file = "clean_data.csv", row.names = FALSE)
