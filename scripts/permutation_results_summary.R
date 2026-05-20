# scripts/permutation_results_summary.R

# NOTE:
# These are reconstructed permutation-test outputs from prior analysis.
# Because the original trial-level data are missing, this script summarizes
# the available permutation output rather than rerunning trial-level permutations.

library(dplyr)

permutation_results <- read.csv("data/permutation_results_reconstructed.csv")

summary_perm <- permutation_results %>%
  group_by(phase) %>%
  summarise(
    mean_observed_diff = mean(observed_diff),
    mean_p_value = mean(p_value),
    .groups = "drop"
  )

print(summary_perm)

write.csv(summary_perm,
          "results/permutation_summary.csv",
          row.names = FALSE)
