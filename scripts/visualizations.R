# scripts/visualizations.R

library(dplyr)
library(ggplot2)
library(tidyr)

accuracy_data <- read.csv("data/accuracy_summary.csv")
bias_data <- read.csv("data/bias_data.csv")

# Accuracy bar plot with standard errors
summary_accuracy <- accuracy_data %>%
  mutate(condition = ifelse(modeSeq == 1, "One-hand", "Two-hand")) %>%
  group_by(condition, absPhaseSeq) %>%
  summarise(
    mean_accuracy = mean(accuracy, na.rm = TRUE),
    se_accuracy = sd(accuracy, na.rm = TRUE) / sqrt(n()),
    .groups = "drop"
  )

p1 <- ggplot(summary_accuracy,
             aes(x = factor(absPhaseSeq),
                 y = mean_accuracy,
                 fill = condition)) +
  geom_col(position = position_dodge(width = 0.8),
           width = 0.65,
           color = "black") +
  geom_errorbar(aes(ymin = mean_accuracy - se_accuracy,
                    ymax = mean_accuracy + se_accuracy),
                position = position_dodge(width = 0.8),
                width = 0.2) +
  scale_fill_manual(values = c("white", "grey60")) +
  labs(
    title = "Accuracy Across Phase Differences",
    x = "Phase Difference (degrees)",
    y = "Mean Accuracy",
    fill = "Condition"
  ) +
  theme_classic()

ggsave("figures/accuracy_barplot.png",
       p1,
       width = 8,
       height = 6,
       dpi = 300)

# Bias scatterplot
p2 <- ggplot(bias_data,
             aes(x = one_hand_bias,
                 y = two_hand_bias)) +
  geom_point(size = 3) +
  geom_text(aes(label = subject),
            vjust = -0.8,
            size = 3) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal() +
  labs(
    title = "One-hand vs Two-hand Response Bias",
    x = "One-hand bias",
    y = "Two-hand bias"
  ) +
  theme_classic()

ggsave("figures/bias_scatterplot.png",
       p2,
       width = 8,
       height = 6,
       dpi = 300)

print(p1)
print(p2)
