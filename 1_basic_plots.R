install.packages('faraway')
library('faraway')

data(cheddar)
print(cheddar)
summary(cheddar)

ids = names(cheddar)
layout(matrix(1:4, nrow = 1))
y_lab_string = "Quantity";
for (id in ids){
  hist(cheddar[,id], xlab=id, ylab=y_lab_string, main = paste("Histogram of ", id))
  y_lab_string="";
}
cheddar[c("taste")]
