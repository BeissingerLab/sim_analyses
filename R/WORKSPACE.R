NILS<-read.csv("C:/Users/hia5y7/Desktop/R/NILS.csv", header=TRUE,stringsAsFactors=F)

NILS2<-as.matrix(NILS)

NILS2[which(NILS2 == "B")] <- 0
NILS2[which(NILS2 == "M")] <- 1
NILS2[which(NILS2 == "H")] <- 0.5
NILS2[which(NILS2 == "C")] <- NA
NILS2[which(NILS2 == "N")] <- NA


col <- matrix("NA",nrow=20,ncol=nrow(NILS2))

for(i in 1:20){
col[i,which(NILS2[,i+2] == 0)] <- "darkblue"
col[i,which(NILS2[,i+2] == 1)] <- "brown"
col[i,which(NILS2[,i+2] == .5)] <- "yellow"
col[i,which(is.na(NILS2[,i+2]))] <- "yellow"
}

plot(rep(1,nrow(NILS2)), col=col[1,],ylim=c(1,20),yaxt="n",cex=1,pch="|",lend="butt")

for(i in 2:20){
  points(1:nrow(NILS2),rep(i,nrow(NILS2)), col=col[i,],pch="|")}

axis(2,at=c(1:20),colnames(NILS2)[3:22],las=1)



results <- matrix(NA,nrow=1,ncol=4)

for(i in 2:ncol(allSims)){
  genos.tmp <- genos
  genos.tmp[,1] <- c("","",allSims[,i])
  write.csv(genos.tmp,file=paste(i,".genos.tmp.csv"),row.names=F,quote=F)
  
  
  sim <- read.cross(format = "csv", ".", 
                    file=paste(i,".genos.tmp.csv"), na.strings=c("-","NA"), genotypes = c("A","B"))
  
  sim2 <- jittermap(sim, 1e-6)
  
  sim3 <- convert2riself(sim2)
  
  ##Anaylze using R-QTL
  
  sim4 <- calc.genoprob(sim3)
  
  scanone <- scanone(sim4, method = "hk")
  
  scanoneperm <- scanone(sim4, method = "hk", n.perm = 1)
  
  thresh <- summary(scanoneperm)[1,1]
  
  
rows <- matrix(NA,nrow=1,ncol=4)

 first<- sigs[which(sigs %in% rownames(scanone[which(scanone[,3] >= 1),]))]
 
  rows[1,1:length(first)] <- first
  
  results <- rbind(results, rows)
        
  print(i)
  
}


results3 <- matrix(NA,nrow=101,ncol=4)

for(i in 2:ncol(allSims)){
  genos.tmp <- genos
  genos.tmp[,1] <- c("","",allSims[,i])
  write.csv(genos.tmp,file=paste(i,".genos.tmp.csv"),row.names=F,quote=F)
  
  
  sim <- read.cross(format = "csv", ".", 
                    file=paste(i,".genos.tmp.csv"), na.strings=c("-","NA"), genotypes = c("A","B"))
  
  sim2 <- jittermap(sim, 1e-6)
  
  sim3 <- convert2riself(sim2)
  
  ##Anaylze using R-QTL
  
  sim4 <- calc.genoprob(sim3)
  
  CIM <- cim(sim4, n.marcov = 6, window = 10, method = "hk")
  
  CIMperms <- cim(sim4, n.marcov = 6, window= 10, method = "hk", n.perm = 100)
  
  thresh <- summary(CIMperms)[1,1]
  
  
  first<- sigs[which(sigs %in% rownames(CIM[which(CIM[,3] >= thresh),]))]
  
  results3[i,1:length(first)] <- first
  
  
  
  print(i)
  
}

results2[which(results2 == NA)] <- 1

write.csv(results2, file = "0.9herresults.csv")

plot(CIM)
add.threshold(CIM, perm = CIMperms, alpha = 0.05)



###  YO! Figure out how to extract all significant interactions from scantwo results!

int1x2 <- foo[rownames = twosigs[1],colnames = twosigs[2]]
int2x1 <- foo[rownames = twosigs[2],colnames = twosigs[1]]
int3x4 <- foo[rownames = twosigs[3],colnames = twosigs[4]]
int4x3 <- foo[rownames = twosigs[4],colnames = twosigs[3]]
int5x6 <- foo[rownames = twosigs[5],colnames = twosigs[6]]
int6x5 <- foo[rownames = twosigs[6],colnames = twosigs[5]]
int7x8 <- foo[rownames = twosigs[7],colnames = twosigs[8]]
int8x7 <- foo[rownames = twosigs[8],colnames = twosigs[7]]
welp <- rbind(twothresh, int1x2, int2x1, int3x4, int4x3, int5x6, int6x5, int7x8, int8x7)




### Possible complicated way to find interactions

index <- which(foo >= twothresh, arr.ind = T)

what <- paste(rownames(foo)[index[,1]], colnames(foo)[index[,2]], sep=", ")

blank <- matrix(NA, nrow = nrow(index), ncol = 2)
for(i in 1:nrow(index)){

  whatrows <- matrix(unlist(strsplit(x=what[i],split=", ")), nrow = 1, ncol = 2)

  blank[i,] <- whatrows


  if((blank[i,1]==twosigs[1])&(blank[i,2]==twosigs[2])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[3])&(blank[i,2]==twosigs[4])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[5])&(blank[i,2]==twosigs[6])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[7])&(blank[i,2]==twosigs[8])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[8])&(blank[i,2]==twosigs[7])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[6])&(blank[i,2]==twosigs[5])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[4])&(blank[i,2]==twosigs[3])){
    print(blank[i,])}
  if((blank[i,1]==twosigs[2])&(blank[i,2]==twosigs[1])){
    print(blank[i,])}

}











if( (twosigs[which(twosigs) %in% rownames(foo)[which(foo >= twothresh)])]&(twosigs[which(twosigs %in% colnames(foo)[which(foo >= twothresh)])])) {
  print(rownames(foo))
  print(colnames(foo))
}



lasthope <- matrix(NA, nrow = 1339, ncol = 8)
for( i in 1:1339){
  tworows <- matrix(NA, nrow = 1, ncol = 8)
  
  tworeals <- (twosigs)[(twosigs) %in% (rownames(foo)[which(foo[,i] >= twothresh)])]
  
  if(length(tworeals) != 0){tworows[1,1:length(tworeals)] <- tworeals
  }
  if(length(tworows) != 0){lasthope[i,1:length(tworows)] <- tworows
  }
}
lasthope2 <- matrix(NA, nrow = 1339, ncol = 8)
for( i in 1:1339){
  tworows <- matrix(NA, nrow = 1, ncol = 8)
  
  tworeals <- twosigs[(twosigs) %in% colnames(foo)[which(foo[i,] >= twothresh)]]
  
  if(length(tworeals) != 0){tworows[1,1:length(tworeals)] <- tworeals
  }
  if(length(tworows) != 0){lasthope2[i,1:length(tworows)] <- tworows
  }
}


lasthope3 <- matrix(NA, nrow = 1339, ncol = 8)
for( i in 1:1339){
  tworows <- matrix(NA, nrow = 1, ncol = 8)
  
  tworeals <- twosigs[(twosigs) %in% colnames(foo)[which(foo[,i] >= twothresh)]]
  
  if(length(tworeals) != 0){tworows[1,1:length(tworeals)] <- tworeals
  }
  if(length(tworows) != 0){lasthope3[i,1:length(tworows)] <- tworows
  }
}






lasthope3 <- matrix(NA, nrow = 1339, ncol = 8)
rownames(lasthope3) <- rownames(foo)
for( i in 1:1339){
  tworows <- matrix(NA, nrow = 1, ncol = 8)
  tworeals <- matrix(NA, nrow = 1, ncol = 8)
  
  if(length(twosigs[(twosigs) %in% colnames(foo)[i]]) != 0){
    tworeals <- twosigs[(twosigs) %in% rownames(foo)[which(foo[,i] >= twothresh)]]
  }
  
  if(length(tworeals) != 0){tworows[1,1:length(tworeals)] <- tworeals
  }
  if(length(tworows) != 0){lasthope3[i,1:length(tworows)] <- tworows
  }
}
foo <- matrix(scantwo$lod, nrow = 1339, ncol = 1339)
rownames(foo) <- rownames(CIM)
colnames(foo) <- rownames(CIM)

QTL <- makeqtl(sim4, chr=c(1, 4 , 6 , 10), pos=c(885.1, 290.2, 410.3, 124.8), what = "prob")

QTLfit <- fitqtl(sim4, qtl = QTL, formula = y ~ Q1+Q2+Q3, method = "hk", get.ests = T )

summary(QTLfit)

lodint(CIM, 1, 885.1)


plot(CIM)
add.threshold(CIM, perm = CIMperms, alpha = 0.05)

summary(CIM,perm = CIMperms, alpha = 0.05)


scanone <- scanone(sim4, method = "hk")

scanoneperm <- scanone(sim4, method = "hk", n.perm = 100)

summary(scanone, perm = scanoneperm, format = "allpeaks",alpha = 0.05)

plot(scanone)
add.threshold(scanone, perm = scanoneperm, alpha = 0.05)


plot(scantwo, perm = scantwoperms, alpha = 0.05)



which(scanone[,3] >= thresh)  ### ==, <=, !=

scanone[which(scanone[,3] >= thresh),]

rownames(scanone[which(scanone[,3] >= thresh),])




which(sigs %in% rownames(scanone[which(scanone[,3] >= thresh),]))
which(rownames(scanone[which(scanone[,3] >= thresh),]) %in% sigs)

plot(scantwo)

names(twosigs) %in% ((colnames(foo)[(foo >= twothresh)])&(rownames(foo)[(foo >= twothresh)]))



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

plot(c(a01/400,a02/400,a03/400,a04/400,a05/400,a06/400,a07/400,a08/400,a09/400), 
     type = "o", main = "Epistatic Full Model", xlab = "Heritability", ylab = "Discovery Rate", ylim = 0:1)


library("qtl")
scantwo(cbind(read.table("../Desktop/R/EMP_only_4_Add_QTN_4_Epi_QTN_h.2_0.9_add.eff_0_epis.eff_1_reps_100/Simulated.Data.100.Reps.Herit.0.9.txt", header = T)[,2], t(read.csv(file = "../Desktop/R/EMP_genos.csv")), method = "hk" ))





phenos <- read.table("../Desktop/R/EMP_only_4_Add_QTN_4_Epi_QTN_h.2_0.9_add.eff_0_epis.eff_1_reps_100/Simulated.Data.100.Reps.Herit.0.9.txt", header = T)

phenos <- phenos[,2:ncol(phenos)]

genos <- t(read.csv("../Desktop/R/EMP_genos.csv"))


colnames(blanks) <- colnames(phenos)

phenos2 <- rbind(blanks, phenos)

pheno <- as.matrix(phenos[,1])
pheno1 <- rbind((matrix("", nrow = 3, ncol = 1)), pheno)


genos2 <- genos[-c(2,5), ]
pheno1[1,1] <- ""
full <- cbind(pheno1,genos2)
write.csv(full, "full.csv")
for(i in 1:ncol(full)){if((full[3,i] == ".") == T){full[3,i] <- (full[3,i-1] + full[3,i+1])/2}}
full <- read.cross(format = "csv",dir = "", "full.csv")

scantwo(full, method = "hk")

temperature <- read.table("../Desktop/R/temperature_south.txt", sep = ",", header = F)
temperature_genetics <- temperature[,2:4]

colnames(temperature_genetics) <- c("Date","Max Temp","Min Temp")
temperature_genetics[,1] <- paste("2017",(paste(0,temperature[,1], sep = "")), temperature[,2], sep = "-")
temperature_genetics[,1] <- as.Date(temperature_genetics[,1], format = "%Y-%m-%d")

for(i in 1:nrow(temperature_genetics)){if(temperature_genetics[i,2] > 86){temperature_genetics[i,2] <- 86}}
for(i in 1:nrow(temperature_genetics)){if(temperature_genetics[i,3] < 50){temperature_genetics[i,3] <- 50}}

GDD <- matrix((((temperature_genetics[,2]) + (temperature_genetics[,3])/2)) - 50, ncol = 1,nrow = nrow(temperature_genetics))
GDD <- cbind(temperature_genetics[,1],GDD)
colnames(GDD) <- c("Date","GDD/Day")
GDD[,1] <- (temperature_genetics[,1])

GDDtots <- matrix(NA,ncol = 2, nrow = 880)



final[which(is.na(final) == T)] <- 0


for(i in 1:440){
  GDDtots[i,1] <- sum(GDD[2:as.numeric(final[i,1]),2])
}

for(i in 441:880){
  GDDtots[i,1] <- sum(GDD[1:as.numeric(final[i,1]),2])
}

for(i in 1:440){
  GDDtots[i,2] <- sum(GDD[2:as.numeric(final[i,2]),2])
}

for(i in 441:880){
  GDDtots[i,2] <- sum(GDD[1:as.numeric(final[i,2]),2])
}

GDDtots[which(GDDtots < 200)] <- NA

colnames(GDDtots) <- c("Anthesis GDD","Silking GDD")

final[which(final == 0)] <- NA

done <- cbind(dates,final,GDDtots)

write.csv(done, file = "../Desktop/R/emp_maturity_data.csv")

EMP <- read.csv("all_sim_data/simulation_analyses_0.5/EMP_genos.csv", header = F)




kernelDepth <- read.csv(file = "../Downloads/21-Dec-2017_JSON_compiledData.csv", header = T)
kernelDepth[,3:ncol(kernelDepth)] <- (kernelDepth[,3:ncol(kernelDepth)]/(300/25.4))


























