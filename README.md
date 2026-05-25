# Vibrotactile Motion Perception and Perceptual Decision-Making

## Project Overview

Undergraduate cognitive neuroscience research project investigating human tactile perception and perceptual decision-making using vibration-based stimuli delivered to the fingertips.

The study examined how hand configuration influences vibrotactile motion perception by comparing one-hand and two-hand stimulation conditions across phase differences of 30°, 60°, and 90° using a two-alternative forced-choice (2-AFC) behavioural paradigm.

This repository reconstructs the analytical workflow and visualisation pipeline based on available summary outputs from the original project.

---

## Research Questions

- Does tactile motion perception differ between one-hand and two-hand stimulation?
- How do phase differences influence perceptual performance?
- Does sensory integration across hands improve behavioural accuracy?

---

## Data

Because the original trial-level dataset was unavailable during reconstruction, the repository contains reconstructed summary datasets:

- accuracy_summary.csv → participant × condition × phase accuracy table
- bias_data.csv → one-hand versus two-hand response bias
- permutation_results_reconstructed.csv → reconstructed permutation-test outputs

---

## Methods

Analyses included:

- Behavioural performance comparison across stimulation conditions
- Phase-level accuracy analysis
- Response bias analysis
- Paired t-tests
- Permutation testing
- Data visualisation and statistical reporting

---

## Tools & Libraries

### Analysis
- R
- dplyr
- tidyr

### Visualisation
- ggplot2

### Research Methods
- Human participant research
- Behavioural experiment analysis
- Psychophysics
- Perceptual decision-making

---

## Important Note

The original trial-level data were unavailable when reconstructing this repository.

Therefore, this project should be interpreted as a reproducible reconstruction of the analytical workflow and reporting process rather than a complete reproduction using raw experimental data.

---

## Key Findings

Two-hand stimulation conditions generally demonstrated:

- Higher behavioural accuracy
- Faster perceptual performance
- Improved tactile motion perception across phase differences

These findings support hypotheses related to sensory integration and somatosensory processing efficiency.

---

## Figures

### Accuracy Across Phase Differences

![Accuracy barplot](figures/accuracy_barplot.png)

### One-hand vs Two-hand Response Bias

![Bias scatterplot](figures/bias_scatterplot.png)
