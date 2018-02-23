results09 <- read.csv("../Desktop/R/Results/results.additive.0.9.csv")[,2:6]
colnames(results09)[1] <- "Threshold"
matrix09 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
  if(results09[i,j]>results09[i,1]){matrix09[i,j] <- print(results09[i,j])}
}}
colnames(matrix09) <- c("threshold", "1", "2", "3", "4")
matrix09[,1] <- results09[,1]


nine <- length(which(matrix09[,5] > 1)) + length(which(matrix09[,4] > 1)) + length(which(matrix09[,3] > 1)) + length(which(matrix09[,2] > 1))


results08 <- read.csv("../Desktop/R/Results/results.additive.0.8.csv")[,2:6]
colnames(results08)[1] <- "Threshold"
matrix08 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results08[i,j]>results08[i,1]){matrix08[i,j] <- print(results08[i,j])}
  }}
colnames(matrix08) <- c("threshold", "1", "2", "3", "4")
matrix08[,1] <- results08[,1]

eight <- length(which(matrix08[,5] > 1)) + length(which(matrix08[,4] > 1)) + length(which(matrix08[,3] > 1)) + length(which(matrix08[,2] > 1))



results07 <- read.csv("../Desktop/R/Results/results.additive.0.7.csv")[,2:6]
colnames(results07)[1] <- "Threshold"
matrix07 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results07[i,j]>results07[i,1]){matrix07[i,j] <- print(results07[i,j])}
  }}
colnames(matrix07) <- c("threshold", "1", "2", "3", "4")
matrix07[,1] <- results07[,1]


seven <- length(which(matrix07[,5] > 1)) + length(which(matrix07[,4] > 1)) + length(which(matrix07[,3] > 1)) + length(which(matrix07[,2] > 1))


results06 <- read.csv("../Desktop/R/Results/results.additive.0.6.csv")[,2:6]
colnames(results06)[1] <- "Threshold"
matrix06 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results06[i,j]>results06[i,1]){matrix06[i,j] <- print(results06[i,j])}
  }}
colnames(matrix06) <- c("threshold", "1", "2", "3", "4")
matrix06[,1] <- results06[,1]


six <- length(which(matrix06[,5] > 1)) + length(which(matrix06[,4] > 1)) + length(which(matrix06[,3] > 1)) + length(which(matrix06[,2] > 1))


results05 <- read.csv("../Desktop/R/Results/results.additive.0.5.csv")[,2:6]
colnames(results05)[1] <- "Threshold"
matrix05 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results05[i,j]>results05[i,1]){matrix05[i,j] <- print(results05[i,j])}
  }}
colnames(matrix05) <- c("threshold", "1", "2", "3", "4")
matrix05[,1] <- results05[,1]

five <- length(which(matrix05[,5] > 1)) + length(which(matrix05[,4] > 1)) + length(which(matrix05[,3] > 1)) + length(which(matrix05[,2] > 1))


results04 <- read.csv("../Desktop/R/Results/results.additive.0.4.csv")[,2:6]
colnames(results04)[1] <- "Threshold"
matrix04 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results04[i,j]>results04[i,1]){matrix04[i,j] <- print(results04[i,j])}
  }}
colnames(matrix04) <- c("threshold", "1", "2", "3", "4")
matrix04[,1] <- results04[,1]


four <- length(which(matrix04[,5] > 1)) + length(which(matrix04[,4] > 1)) + length(which(matrix04[,3] > 1)) + length(which(matrix04[,2] > 1))

results03 <- read.csv("../Desktop/R/Results/results.additive.0.3.csv")[,2:6]
colnames(results03)[1] <- "Threshold"
matrix03 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results03[i,j]>results03[i,1]){matrix03[i,j] <- print(results03[i,j])}
  }}
colnames(matrix03) <- c("threshold", "1", "2", "3", "4")
matrix03[,1] <- results03[,1]

three <- length(which(matrix03[,5] > 1)) + length(which(matrix03[,4] > 1)) + length(which(matrix03[,3] > 1)) + length(which(matrix03[,2] > 1))


results02 <- read.csv("../Desktop/R/Results/results.additive.0.2.csv")[,2:6]
colnames(results02)[1] <- "Threshold"
matrix02 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results02[i,j]>results02[i,1]){matrix02[i,j] <- print(results02[i,j])}
  }}
colnames(matrix02) <- c("threshold", "1", "2", "3", "4")
matrix02[,1] <- results02[,1]

two <- length(which(matrix02[,5] > 1)) + length(which(matrix02[,4] > 1)) + length(which(matrix02[,3] > 1)) + length(which(matrix02[,2] > 1))

results01 <- read.csv("../Desktop/R/Results/results.additive.0.1.csv")[,2:6]
colnames(results01)[1] <- "Threshold"
matrix01 <- matrix(NA, nrow = 100, ncol = 5)
for(j in 2:5){
  for(i in 1:100){
    if(results01[i,j]>results01[i,1]){matrix01[i,j] <- print(results01[i,j])}
  }}
colnames(matrix01) <- c("threshold", "1", "2", "3", "4")
matrix01[,1] <- results01[,1]

one <- length(which(matrix01[,5] > 1)) + length(which(matrix01[,4] > 1)) + length(which(matrix01[,3] > 1)) + length(which(matrix01[,2] > 1))
plot(c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9),c(one/400,two/400,three/400,four/400,five/400,six/400,seven/400,eight/400,nine/400), type = "o", main = "Additive Discovery Rate", xlab = "Heritability", ylab = "Discovery Rate", ylim = 0:1)



full01 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.1.csv")[c(1,2,4,6,8), 2:101]
fullmat01 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full01[j,i]>full01[1,i]){fullmat01[j,i] <- print(full01[j,i])}
  }}

full02 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.2.csv")[c(1,2,4,6,8), 2:101]
fullmat02 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full02[j,i]>full02[1,i]){fullmat02[j,i] <- print(full02[j,i])}
  }}


full03 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.3.csv")[c(1,2,4,6,8), 2:101]
fullmat03 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full03[j,i]>full03[1,i]){fullmat03[j,i] <- print(full03[j,i])}
  }}

full04 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.4.csv")[c(1,2,4,6,8), 2:101]
fullmat04 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full04[j,i]>full04[1,i]){fullmat04[j,i] <- print(full04[j,i])}
  }}

full05 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.5.csv")[c(1,2,4,6,8), 2:101]
fullmat05 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full05[j,i]>full05[1,i]){fullmat05[j,i] <- print(full05[j,i])}
  }}

full06 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.6.csv")[c(1,2,4,6,8), 2:101]
fullmat06 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full06[j,i]>full06[1,i]){fullmat06[j,i] <- print(full06[j,i])}
  }}

full07 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.7.csv")[c(1,2,4,6,8), 2:101]
fullmat07 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full07[j,i]>full07[1,i]){fullmat07[j,i] <- print(full07[j,i])}
  }}

full08 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.8.csv")[c(1,2,4,6,8), 2:101]
fullmat08 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full08[j,i]>full08[1,i]){fullmat08[j,i] <- print(full08[j,i])}
  }}
full09 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.9.csv")[c(1,2,4,6,8), 2:101]
fullmat09 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(full09[j,i]>full09[1,i]){fullmat09[j,i] <- print(full09[j,i])}
  }}

f01 <- length(which(fullmat01[5,] > 1)) + length(which(fullmat01[4,] > 1)) + length(which(fullmat01[3,] > 1)) + length(which(fullmat01[2,] > 1))
f02 <- length(which(fullmat02[5,] > 1)) + length(which(fullmat02[4,] > 1)) + length(which(fullmat02[3,] > 1)) + length(which(fullmat02[2,] > 1))
f03 <- length(which(fullmat03[5,] > 1)) + length(which(fullmat03[4,] > 1)) + length(which(fullmat03[3,] > 1)) + length(which(fullmat03[2,] > 1))
f04 <- length(which(fullmat04[5,] > 1)) + length(which(fullmat04[4,] > 1)) + length(which(fullmat04[3,] > 1)) + length(which(fullmat04[2,] > 1))
f05 <- length(which(fullmat05[5,] > 1)) + length(which(fullmat05[4,] > 1)) + length(which(fullmat05[3,] > 1)) + length(which(fullmat05[2,] > 1))
f06 <- length(which(fullmat06[5,] > 1)) + length(which(fullmat06[4,] > 1)) + length(which(fullmat06[3,] > 1)) + length(which(fullmat06[2,] > 1))
f07 <- length(which(fullmat07[5,] > 1)) + length(which(fullmat07[4,] > 1)) + length(which(fullmat07[3,] > 1)) + length(which(fullmat07[2,] > 1))
f08 <- length(which(fullmat08[5,] > 1)) + length(which(fullmat08[4,] > 1)) + length(which(fullmat08[3,] > 1)) + length(which(fullmat08[2,] > 1))
f09 <- length(which(fullmat09[5,] > 1)) + length(which(fullmat09[4,] > 1)) + length(which(fullmat09[3,] > 1)) + length(which(fullmat09[2,] > 1))

plot(c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9),c(f01/400,f02/400,f03/400,f04/400,f05/400,f06/400,f07/400,f08/400,f09/400),
     type = "o", main = "Epistatic Full Model", xlab = "Heritability", ylab = "Discovery Rate", ylim = 0:1)


add01 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.1.csv")[c(1,2,4,6,8), 2:101]
addmat01 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add01[j,i]>add01[1,i]){addmat01[j,i] <- print(add01[j,i])}
  }}

add02 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.2.csv")[c(1,2,4,6,8), 2:101]
addmat02 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add02[j,i]>add02[1,i]){addmat02[j,i] <- print(add02[j,i])}
  }}


add03 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.3.csv")[c(1,2,4,6,8), 2:101]
addmat03 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add03[j,i]>add03[1,i]){addmat03[j,i] <- print(add03[j,i])}
  }}

add04 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.4.csv")[c(1,2,4,6,8), 2:101]
addmat04 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add04[j,i]>add04[1,i]){addmat04[j,i] <- print(add04[j,i])}
  }}

add05 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.5.csv")[c(1,2,4,6,8), 2:101]
addmat05 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add05[j,i]>add05[1,i]){addmat05[j,i] <- print(add05[j,i])}
  }}

add06 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.6.csv")[c(1,2,4,6,8), 2:101]
addmat06 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add06[j,i]>add06[1,i]){addmat06[j,i] <- print(add06[j,i])}
  }}

add07 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.7.csv")[c(1,2,4,6,8), 2:101]
addmat07 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add07[j,i]>add07[1,i]){addmat07[j,i] <- print(add07[j,i])}
  }}

add08 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.8.csv")[c(1,2,4,6,8), 2:101]
addmat08 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add08[j,i]>add08[1,i]){addmat08[j,i] <- print(add08[j,i])}
  }}
add09 <- read.csv("../Desktop/R/Results/results.epistatic.full.0.9.csv")[c(1,2,4,6,8), 2:101]
addmat09 <- matrix(NA, nrow = 5, ncol = 100)

for(i in 1:100){
  for(j in 2:5){
    if(add09[j,i]>add09[1,i]){addmat09[j,i] <- print(add09[j,i])}
  }}

a01 <- length(which(addmat01[5,] > 1)) + length(which(addmat01[4,] > 1)) + length(which(addmat01[3,] > 1)) + length(which(addmat01[2,] > 1))
a02 <- length(which(addmat02[5,] > 1)) + length(which(addmat02[4,] > 1)) + length(which(addmat02[3,] > 1)) + length(which(addmat02[2,] > 1))
a03 <- length(which(addmat03[5,] > 1)) + length(which(addmat03[4,] > 1)) + length(which(addmat03[3,] > 1)) + length(which(addmat03[2,] > 1))
a04 <- length(which(addmat04[5,] > 1)) + length(which(addmat04[4,] > 1)) + length(which(addmat04[3,] > 1)) + length(which(addmat04[2,] > 1))
a05 <- length(which(addmat05[5,] > 1)) + length(which(addmat05[4,] > 1)) + length(which(addmat05[3,] > 1)) + length(which(addmat05[2,] > 1))
a06 <- length(which(addmat06[5,] > 1)) + length(which(addmat06[4,] > 1)) + length(which(addmat06[3,] > 1)) + length(which(addmat06[2,] > 1))
a07 <- length(which(addmat07[5,] > 1)) + length(which(addmat07[4,] > 1)) + length(which(addmat07[3,] > 1)) + length(which(addmat07[2,] > 1))
a08 <- length(which(addmat08[5,] > 1)) + length(which(addmat08[4,] > 1)) + length(which(addmat08[3,] > 1)) + length(which(addmat08[2,] > 1))
a09 <- length(which(addmat09[5,] > 1)) + length(which(addmat09[4,] > 1)) + length(which(addmat09[3,] > 1)) + length(which(addmat09[2,] > 1))

plot(c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9),c(a01/400,a02/400,a03/400,a04/400,a05/400,a06/400,a07/400,a08/400,a09/400), 
     type = "o", main = "Epistatic Additive Model", xlab = "Heritability", ylab = "Discovery Rate", ylim = 0:1)





