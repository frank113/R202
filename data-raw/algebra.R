# Load the data

algebra <- readxl::read_excel("data-raw/Algebra.xlsx")

## Taken from 36-202 lab 06 Spring 2018

algebra$ConditionLabels <- rep(NA, nrow(algebra))
algebra$ConditionLabels[algebra$Condition == 1] <- "0-4"
algebra$ConditionLabels[algebra$Condition == 2] <- "5-10"
algebra$ConditionLabels[algebra$Condition == 3] <- "11-20"
algebra$ConditionLabels[algebra$Condition == 4] <- "20-30"
algebra$ConditionLabels[algebra$Condition == 5] <- "30+"
algebra$ConditionLabels <- factor(algebra$ConditionLabels)

stopifnot(sum(is.na(algebra$ConditionLabels)) == 0)

# Relevel condition labels into scale of years
algebra$ConditionLabels <- factor(algebra$ConditionLabels, levels=c("0-4", "5-10", "11-20", "20-30", "30+"))

# Save the data

readr::write_csv(algebra, "data-raw/algebra.csv")
devtools::use_data(algebra, overwrite = TRUE)