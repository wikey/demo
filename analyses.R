library(dplyr)
library(MBESS)

data <- read.csv(file = "~/Desktop/OSFworkshop/clean_data.csv", header = TRUE)

data %>%
  group_by(gend_gendobs) %>%
  summarize(mean_lib = mean(libcpre_self, na.rm = T), sd_lib = sd(libcpre_self, na.rm = T))

result <- t.test(libcpre_self ~ gend_gendobs, alternative = "two.sided", paired = FALSE, var.equal = T ,data = data)

ES <- ci.smd(n.1 = 24, n.2 = 54, ncp = 1.131598, conf.level = .95)

boxplot(libcpre_self ~ gend_gendobs, data = data, xlab = "Gender", ylab = "Self-report ideology")

