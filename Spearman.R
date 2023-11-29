setwd("D:/share/data/new/") 
chang<- read.csv("57otu_chang12-C.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang12_c_环境变量.csv", row.names=1)#输入fei菌群丰度数据
#fei<-t(fei)  #转置
#fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p1<-corrplot(merge_cor_final, method = 'ellipse',  tl.col="black", tl.cex=1, tl.srt=70)#饼图

p1






setwd("D:/share/data/new/") 
chang<- read.csv("57otu_chang12-C.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang12_c_属丰度.csv", row.names=1)#输入fei菌群丰度数据
fei<-t(fei)  #转置
fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p2<-corrplot(merge_cor_final, method = 'ellipse', tl.col="black", tl.cex=0.8, tl.srt=70)#饼图

p2








setwd("D:/share/data/new/") 
chang<- read.csv("57otu_chang12-C.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang12_c_功能.csv", row.names=1)#输入fei菌群丰度数据
fei<-t(fei)  #转置
fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p3<-corrplot(merge_cor_final, method = 'ellipse', tl.cex = 0.4)#饼图

p3











setwd("D:/share/data/new/") 
chang<- read.csv("36otu_chang48_c.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang48_c_环境变量.csv", row.names=1)#输入fei菌群丰度数据
#fei<-t(fei)  #转置
#fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p4<-corrplot(merge_cor_final, method = 'ellipse', tl.cex = 1)#饼图

p4







setwd("D:/share/data/new/") 
chang<- read.csv("36otu_chang48_c.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang_48_c_属丰度.csv", row.names=1)#输入fei菌群丰度数据
fei<-t(fei)  #转置
fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p5<-corrplot(merge_cor_final, method = 'ellipse', tl.cex = 0.4)#饼图

p5







setwd("D:/share/data/new/") 
chang<- read.csv("36otu_chang48_c.csv", row.names=1)#输入chang菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
fei<- read.csv("chang48_c_功能.csv", row.names=1)#输入fei菌群丰度数据
fei<-t(fei)  #转置
fei<-as.data.frame(fei) #转dataframe

#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据


dat_genus<- chang
dat_CAZymes<- fei
library(psych)#R包psych中的命令corr.test()提供了在计算变量间相关系数的同时执行显著性检验的方法。
merge_cor<- corr.test(dat_genus, dat_CAZymes, method = 'spearman')#相关性的显著性检验，一般有Pearson相关系数、Spearman相关系数、Kendall相关系数、偏相关系数、多分格（Polychoric）相关系数、多系列（Polyserial）相关系数等等，本文采用Spearman相关系数计算，读者后续可自行更改计算方法。
# merge_cor$r #相关系数值
# merge_cor$p #显著性 p 值
merge_cor$p[merge_cor$p >= 0.05] <- -1#筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p < 0.05 & merge_cor$p >= 0] <- 1  #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$p[merge_cor$p == -1] <- 0 #筛选，例如在“merge_cor”中，根据 p(<0.05) 值做保留
merge_cor$r[abs(merge_cor$r) < 0.85] <- 0#筛选，例如在“merge_cor”中，根据r(>=0.5 or <=-0.5) 值做保留
merge_cor_final <- merge_cor$r * merge_cor$p
merge_cor_final<-merge_cor_final[,which(colSums(merge_cor_final) != 0)] #去掉无关联列
merge_cor_final<-merge_cor_final[which(rowSums(merge_cor_final) != 0),]#去掉无关联行

write.csv(merge_cor_final, 'merge_cor_final.csv', quote = FALSE)

merge_cor_final<- as.matrix(read.csv("merge_cor_final.csv", row.names=1))#输入属水平菌群丰度数据

library(corrplot)#使用corrplot包中的corrplot()命令对相关性数据进行可视化展示
library(corrplot)#根据筛选后的数据“merge_cor_final”作图

p6<-corrplot(merge_cor_final, method = 'ellipse', tl.cex = 0.4)#饼图

p6
