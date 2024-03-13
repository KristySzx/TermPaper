library(dplyr)
library(ggplot2)
library(broom)

# Assuming 'data' is your data frame that contains the dataset
# and that 'Candidate' and 'Contribution Amount' are the exact column names

# Task 1 and 2: Calculate Candidate Frequency and Amount Sum
candidate_summary <- data %>%
  group_by(candidate) %>%
  summarise(
    candidate_frequency = n(),
    amount_sum = sum(contribution_amount, na.rm = TRUE)
  ) %>%
  ungroup()  # Remove the grouping structure

# View the new summary data frame
print(candidate_summary)

# candidate_summary <- data.frame(Candidate_Frequency=..., Amount_Sum=...)

glm_model <- glm(amount_sum ~ candidate_frequency, data=candidate_summary, family=gaussian())
# glm_model <- glm(Amount_Sum ~ Candidate_Frequency, data=candidate_summary, family=gaussian())

tidy_glm <- tidy(glm_model)

glance_glm <- glance(glm_model)

print(tidy_glm)

print(glance_glm)
summary(glm_model)
