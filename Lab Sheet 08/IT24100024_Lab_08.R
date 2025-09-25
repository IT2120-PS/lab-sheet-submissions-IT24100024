setwd("C:\\Users\\IT24100024\\Desktop\\IT24100024")

# Read the data from the text file (make sure to use the correct path to the file)
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# View and edit the data if needed
fix(data)

# Attach the data for easy access to column names
attach(data)

# Assuming the column with laptop weights is named "Weight" (change if necessary)
weights <- data$Weight

# 1. Calculate Population Mean and Population Standard Deviation
population_mean <- mean(weights)
population_std <- sd(weights)

# 2. Draw 25 random samples of size 6 and calculate the sample mean and sample standard deviation
sample_means <- numeric(25)
sample_stds <- numeric(25)

set.seed(42)  # For reproducibility

for (i in 1:25) {
  sample <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_stds[i] <- sd(sample)
}

# 3. Calculate the mean and standard deviation of the 25 sample means
mean_of_sample_means <- mean(sample_means)
std_of_sample_means <- sd(sample_means)

# Output the results
cat("Population Mean:", population_mean, "\n")
cat("Population Standard Deviation:", population_std, "\n")
cat("Mean of Sample Means:", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means:", std_of_sample_means, "\n")
