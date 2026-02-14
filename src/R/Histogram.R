age1 = c(28, 44, 22, 31, 34, 48, 45, 32, 24, 32, 36, 46, 46, 26, 37, 32, 62, 31, 30, 35) 
sort(age1)
# 22 24 26 28 30 31 31 32 32 32 34 35 36 37 44 45 46 46 48 62
cats1 = cut(age1, breaks= c(22,30,38,46,54,62), include.lowest = TRUE, right = FALSE)
table(cats1)
h1 = hist(age1, breaks = c(seq(22, 62, by=8)),  include.lowest=TRUE,right=FALSE,col=heat.colors(5))
lines(c(min(h1$breaks), h1$mids, max(h1$breaks)), c(0,h1$counts,0), type="l")
print(cbind(h1$mids, h1$counts, h1$counts/20, cumsum(h1$counts), cumsum(h1$counts)/20)) 
