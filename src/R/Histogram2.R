x = c(40, 41, 44, 46, 47, 48, 48, 50, 50, 51, 52, 52, 53, 53, 55, 56, 57, 59, 60, 65)
print(c(mean(x), var(x), sd(x))) 
# 51.350000 39.818421  6.310184
h = hist(x, breaks = c(40, 45, 50, 55, 60, 65), include.lowest = TRUE, right = FALSE)
# h = hist(x, breaks = seq(40, 65, 5), include.lowest = TRUE, right = FALSE)

