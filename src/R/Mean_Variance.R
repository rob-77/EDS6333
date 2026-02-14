x = c(13, 15, 17)
f = c(2, 3, 4)
mean(x)               # ans: [1] 15 
var(x)                # ans: [1] 4 
sd(x)                 # ans: [1] 2 
weighted.mean(x, f)   # ans: [1] 15.44444
(1/(sum(f)-1))*(sum(f*x^2)-(1/sum(f))*(sum(x*f)^2)) 
# ans:[1] 2.777778 
sqrt((1/(sum(f)-1))*(sum(f*x^2)-(1/sum(f))*(sum(x*f)^2)))
# ans: [1] 1.666667   # srqt() is square root function.

