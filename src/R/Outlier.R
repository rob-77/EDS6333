flame_intensity <- c(
  2.58, 4.79, 5.50, 6.75, 2.65, 6.60, 11.25, 3.78, 4.90, 5.21,
  2.51, 6.20, 5.92, 5.84, 7.86, 8.79, 3.90, 3.75, 3.49, 1.76,
  4.04, 1.52, 4.56, 8.80, 4.71, 5.92, 5.33, 3.10, 6.77, 9.20,
  6.43, 1.38, 2.46, 7.40, 6.25, 9.65, 8.64, 6.43, 5.62, 1.20,
  1.58, 3.87, 6.90, 4.72, 9.45, 5.09, 7.41, 1.70, 9.70, 6.85,
  4.32, 4.54, 1.47, 3.62, 12.80, 4.11, 7.96, 6.40, 5.11, 2.80,
  2.20, 5.12, 2.11, 2.46, 1.42, 6.37, 10.60, 3.24, 4.50, 7.35,
  4.19, 5.15, 2.32, 8.75, 1.92, 5.40, 3.81, 1.79, 2.50, 11.75
)
# Summary of original data
summary(flame_intensity)
print(c(var(flame_intensity), sd(flame_intensity)))
# [1] 7.329462 2.707298
# Identify outlier from boxplot
boxplot(flame_intensity)$out    # Output: 12.8
which(flame_intensity == 12.8)  # Output: 55
# Remove the outlier
flame_intensity1 <- flame_intensity[-which(flame_intensity == 12.8)]
# Recalculate statistics after removing outlier
print(c(var(flame_intensity1), sd(flame_intensity1)))
# [1] 6.675491 2.583697
summary(flame_intensity1)
# Check for remaining outliers
boxplot(flame_intensity1)$out   # Output: numeric(0)
