# scripts/t_test_bias_analysis.R

bias_data <- read.csv("data/bias_data.csv")

t_test_result <- t.test(
  bias_data$one_hand_bias,
  bias_data$two_hand_bias,
  paired = TRUE
)

print(t_test_result)

# Cohen's dz for paired samples
difference <- bias_data$two_hand_bias - bias_data$one_hand_bias
cohens_dz <- mean(difference) / sd(difference)

cat("Paired-samples Cohen's dz:", cohens_dz, "\n")
