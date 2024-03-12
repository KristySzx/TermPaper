library(ggplot2)
library(dplyr)


ggplot(data, aes(y = contribution_amount)) + 
  geom_boxplot() +
  labs(title = "Boxplot of Contribution Amount", y = "Contribution Amount")

IQR_value <- IQR(data$contribution_amount)
lower_bound <- quantile(data$contribution_amount, 0.25) - 1.5 * IQR_value
upper_bound <- quantile(data$contribution_amount, 0.75) + 1.5 * IQR_value

filtered_data <- data %>%
  filter(contribution_amount >= lower_bound & contribution_amount <= upper_bound)

ggplot(filtered_data, aes(x = contribution_amount)) + 
  geom_histogram(binwidth = 100, fill = "dodgerblue", color = "black") +
  labs(title = "Histogram of Contribution Amount (Excluding Outliers)", x = "Contribution Amount", y = "Frequency")
