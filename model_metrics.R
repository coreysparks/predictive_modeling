# Classification metrics utility functions

# Calculate metrics from a confusion table
# Input: confusion matrix (from table(predicted, observed))
# Returns: data frame with sensitivity, specificity, precision, F1, accuracy
classify_metrics <- function(conf_table) {
  # Extract values from confusion matrix
  # Assumes: rows are predictions, columns are observed
  # rows/cols ordered as: 0 (negative), 1 (positive)

  tn <- conf_table[1, 1]  # true negatives
  fp <- conf_table[2, 1]  # false positives
  fn <- conf_table[1, 2]  # false negatives
  tp <- conf_table[2, 2]  # true positives

  # Calculate metrics
  accuracy <- (tp + tn) / (tp + tn + fp + fn)
  sensitivity <- tp / (tp + fn)  # true positive rate / recall
  specificity <- tn / (tn + fp)  # true negative rate
  precision <- tp / (tp + fp)    # positive predictive value
  f1 <- 2 * (precision * sensitivity) / (precision + sensitivity)

  data.frame(
    Accuracy = round(accuracy, 4),
    Sensitivity = round(sensitivity, 4),
    Specificity = round(specificity, 4),
    Precision = round(precision, 4),
    F1_Score = round(f1, 4)
  )
}

# Alternative: calculate metrics from predicted and observed vectors
classify_metrics_vectors <- function(predicted, observed) {
  conf_table <- table(predicted, observed)
  classify_metrics(conf_table)
}
