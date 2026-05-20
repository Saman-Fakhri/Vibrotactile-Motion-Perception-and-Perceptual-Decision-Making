# scripts/accuracy_analysis.R

library(dplyr)
library(tidyr)

accuracy_data <- read.csv("data/accuracy_summary.csv")

# Mean accuracy and standard error by condition and phase
summary_accuracy <- accuracy_data %>%
  mutate(condition = ifelse(modeSeq == 1, "One-hand", "Two-hand")) %>%
  group_by(condition, absPhaseSeq) %>%
  summarise(
    mean_accuracy = mean(accuracy, na.rm = TRUE),
    sd_accuracy = sd(accuracy, na.rm = TRUE),
    n = n(),
    se_accuracy = sd_accuracy / sqrt(n),
    .groups = "drop"
  )

print(summary_accuracy)

write.csv(summary_accuracy,
          "results/summary_accuracy.csv",
          row.names = FALSE)

