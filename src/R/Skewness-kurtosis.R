# -----------------------------
# Data
# -----------------------------
age = c(28, 44, 22, 31, 34, 48, 45, 32, 24, 32,
        36, 46, 46, 26, 37, 32, 62, 31, 30, 35)


# -----------------------------
# Histogram (grouped data)
# -----------------------------
h1 = hist(age,
          breaks = seq(22, 62, by = 8),
          include.lowest = TRUE,
          right = FALSE,
          col = "lightgray",
          main = "Shape of Distribution: Skewness & Kurtosis",
          xlab = "Age",
          ylab = "Frequency")

# Midpoints and frequencies
x = h1$mids
f = h1$counts
n = sum(f)

# -----------------------------
# Grouped-data moments
# -----------------------------
m = sum(x * f) / n                     # mean
s = (1/(n - 1)) * (sum(f * x^2) - n*m^2)  # variance
sd = sqrt(s)
# Skewness and excess kurtosis
skewness  = (1/n) * sum(f * (x - m)^3) / sd^(3)
kurtosis  = (1/n) * sum(f * (x - m)^4) / sd^4 - 3

skewness
kurtosis

# -----------------------------
# Mean line
# -----------------------------
abline(v = m, col = "blue", lwd = 2)

# -----------------------------
# Skewness direction arrow
# -----------------------------
arrows(m, max(f)*0.8,
       m + skewness*6, max(f)*0.8,
       length = 0.12, col = "red", lwd = 2)

text(m + skewness*6,
     max(f)*0.85,
     "Skewness",
     col = "red")

# -----------------------------
# Normal curve (for kurtosis comparison)
# -----------------------------
xgrid = seq(min(age), max(age), length = 300)

normal_curve = dnorm(xgrid, mean = m, sd = sqrt(s))
normal_curve = normal_curve * diff(h1$breaks)[1] * n

lines(xgrid, normal_curve, col = "darkgreen", lwd = 2, lty = 2)

# -----------------------------
# Legend
# -----------------------------
legend("topright",
       legend = c("Mean",
                  "Normal reference",
                  paste("Skewness =", round(skewness, 3)),
                  paste("Kurtosis =", round(kurtosis, 3))),
       col = c("blue", "darkgreen", NA, NA),
       lwd = c(2, 2, NA, NA),
       lty = c(1, 2, NA, NA),
       bty = "n")
