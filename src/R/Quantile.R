child = c(0,1,1,0,3,2,2,1,0,0,2,2,2,3,0,4,0,1,0,3)
x = sort(child)
n = length(x)
c(mean(x), var(x), sd(x))   # mean, variance, sd
which(table(x) == max(table(x)))  # mode
median(x)                    # median
quantile(x)                  # quartiles
IQR(x)                       # IQR
# 77th percentile by formula
p = 0.77
r = floor((n+1)*p)
w = (n+1)*p - r
Q77 = (1-w)*x[r] + w*x[r+1]
Q77
quantile(x, 0.77)            # R's built-in check


boxplot(x,
        horizontal = TRUE,
        col = "lightgray",
        main = "Boxplot of Number of Children")

abline(v = Q77, col = "red", lwd = 2, lty = 2)

