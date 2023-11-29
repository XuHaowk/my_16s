library(vegan)
library(ape)
library(phangorn)



setwd("D:/share/xin/data/new/")
chang<- read.csv("start_otu_table_chang_even42030.csv", row.names=1)#输入CTRL组菌群丰度数据
chang<-t(chang)  #转置
chang<-as.data.frame(chang) #转dataframe
spe<-chang
env<- read.csv("start_variants_chang.csv", row.names=1)#输入CTRL组环境数据
#fei<-t(fei)  #转置
#fei<-as.data.frame(fei) #转dataframe
#chang<-chang[,1:100]  #取100列作为测试数据
#fei<-fei[,1:50]  #取50列作为测试数据
spe<-spe[,which(colSums(spe) > 0)]  #过滤掉所有样品都为0的otu变量
#生成Bray-Curtis距离矩阵
spe.db <- vegdist(spe)
spe.db.dd<-as.matrix(spe.db) 	#转换成矩阵，因为上面算出来的类别为dist，不能直接写入表格中
#总PCOA图
dist<- spe.db.dd
spe.pcoa <- cmdscale(dist, k=(nrow(spe)-1), eig=TRUE, add=TRUE)
#将柱坐标矩阵保存在一个文件内
spe.scores <- spe.pcoa$points
(ev <- spe.pcoa$eig)#前两个是xy两轴解释变差的比例
#分组样本可视化
x = spe.pcoa$points[,1]
y = spe.pcoa$points[,2]
library(ggplot2)
p=ggplot(data.frame(x,y),aes(x,y))
p+geom_point(size=3,alpha=0.8,
             aes(
               colour=factor(env$group1)
               ,
               shape=factor(env$group3)))
#用RDA()函数进行db-RDA分析
spe.dbrda <- rda(spe.scores ~ group1 , env, dist="hellinger",add=TRUE)
#输出结果中获得典范系数
coef(spe.dbrda)
# 提取校正R2
# 从rda的结果中提取未校正R2
(R2 <- RsquareAdj(spe.dbrda)$r.squared)
# 从rda的结果中提取校正R2
(R2adj <- RsquareAdj(spe.dbrda)$adj.r.squared)
# RDA所有轴置换检验
anova.cca(spe.dbrda, step=10000)	#保留p值
#adonis
#有无矩阵生成jaccard距离矩阵
dist.ado <- adonis2(dist(spe.db)~env$group2, perm=999)
##多环境因子adonis(dist(spe.hel) ~ A1*Management, dune.env, perm=200)
dist.ado   #保留p值和r2值