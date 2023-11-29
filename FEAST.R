Packages <- c("Rcpp", "RcppArmadillo", "vegan", "dplyr", "reshape2", "gridExtra", "ggplot2", "ggthemes")
install.packages(Packages)
lapply(Packages, library, character.only = TRUE)
devtools::install_github("cozygene/FEAST")

library(FEAST)
setwd("D:/share/data/new/") 


metadata <- Load_metadata(metadata_path = "D:/share/data/new/1meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",outfile="1demo")


metadata <- Load_metadata(metadata_path = "D:/share/data/new/2meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="2demo")



metadata <- Load_metadata(metadata_path = "D:/share/data/new/3meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/ata/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="3demo")




metadata <- Load_metadata(metadata_path = "D:/share/data/new/4meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="4demo")





metadata <- Load_metadata(metadata_path = "D:/share/data/new/5meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="5demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/6meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="6demo")







metadata <- Load_metadata(metadata_path = "D:/share/data/new/7meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="7demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/8meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="8demo")







metadata <- Load_metadata(metadata_path = "D:/share/data/new/9meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="9demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/10meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="10demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/11meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="11demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/12meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="12demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/13meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="13demo")





metadata <- Load_metadata(metadata_path = "D:/share/data/new/14meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="14demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/15meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="15demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/16meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="16demo")






metadata <- Load_metadata(metadata_path = "D:/share/data/new/17meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="17demo")







metadata <- Load_metadata(metadata_path = "D:/share/data/new/18meta_otu_table_even42030.txt")
otus <- Load_CountMatrix(CountMatrix_path = "D:/share/data/new/otu_table_even42030.txt")
FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 1, dir_path = "D:/share/data/new/",
                      outfile="18demo")
