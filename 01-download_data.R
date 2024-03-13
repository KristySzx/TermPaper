library(janitor)
library(readxl)
library(opendatatoronto)
library(dplyr)

summary_diseases <- search_packages("Campaign Contributions") %>%
  list_package_resources() %>%
  filter(name == "Campaign Contributions 2014 Data") %>%
  get_resource()
str(summary_diseases, max.level = 1)
contribution_2014 <- summary_diseases[["2_Mayor_Contributions_2014_election.xls"]]


col_names <- contribution_2014[1, ]
names(contribution_2014) <- col_names
contribution_2014 <- contribution_2014[-1, ]
head(contribution_2014)
contribution_2014 <- janitor::clean_names(contribution_2014)

if (!dir.exists("inputs/data")) {
  dir.create("inputs/data", recursive = TRUE)
}
write.csv(data, "inputs/data/contribution_2014.csv", row.names = TRUE)

