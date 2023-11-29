setwd("D:/share/data/new/")
chang<- read.csv("start_otu_table_chang_even42030.csv", row.names=1)#输入CTRL组菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
spe<-chang
env<- read.csv("start_variants_chang.csv", row.names=1)#输入CTRL组环境数据
spe<-spe[,which(colSums(spe) > 0)]  #过滤掉所有样品都为0的otu变量
#Indel物种指示值
# 样方组的指示种
library(labdsv)
#indicspecies包获得指示物种
library(indicspecies)
indice.cutg<-multipatt(spe, env$group2, func = "IndVal.g", duleg=FALSE, restcomb=NULL,
                       min.order = 1, max.order = NULL, control=how(nperm = 999),
                       print.perm=FALSE)
indice.cutg$sign
zzz<-indice.cutg$sign
q=p.adjust(zzz$p.value,method="BH",n=length(zzz$p.value)-sum(is.na(zzz$p.value))) #p值校正
zzz <- cbind(zzz,q)
write.csv(zzz, "zzz.csv")  #将结果转存excel文件，以备后续比较
