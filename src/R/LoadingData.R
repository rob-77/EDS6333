# Read tabular data
#setwd("/Users/saviz/Desktop/Lectures-Stat/Week 1")
#getwd()

s = read.table('/data/school.txt', header=TRUE)
# View first few rows
head(s)
print(s)



# ---------------------------------------------------------
# analysis.R
# Example: Loading a text file from the data/ folder
# ---------------------------------------------------------

# Check where R thinks the working directory is
print(getwd())

# Load a text file located in ../data/
df <- read.table("./data/school.txt", header = TRUE)

# Show the first few rows
head(df)

# If your file is CSV instead of TXT:
# df <- read.csv("../data/mydata.csv")

# Basic summary
summary(df)

print(df)
