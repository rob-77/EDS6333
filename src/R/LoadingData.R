# Read tabular data
setwd("/Users/saviz/Desktop/Lectures-Stat/Week 1")
getwd()

s = read.table('../data/school.txt', header=TRUE)
# View first few rows
head(s)
print(s)
