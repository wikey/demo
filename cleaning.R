
data <- read.csv(file = "~/Desktop/OSFworkshop/raw_data.csv", header = TRUE)

data[data < 0] <- NA
data <- data[c(-15)]

clean_data.csv <- write.csv(data, file = "clean_data.csv", row.names = FALSE)
