#Bar charts with ggplot2
library(ggplot2)
library(xlsx)
library(reshape2)
library(plyr)
library(dplyr)
library(plotly)
require(dplyr)
require(plotly)
set.seed(123)
setwd("/Users/egrinman/Desktop/Sathya Lab data/qRTPCR")
qpcrdata <- read.xlsx("093016.xlsx", 5)
genes<-qpcrdata
head(genes)
dimnames(genes)
dimnames(genes)[1]<-list(genes$Gene)
genes$Gene<-NULL
dimnames(genes)[2]<-list(c('Hom','Hom','Hom','Hom','Hom','Hom','Hom','Syn','Syn','Syn','Syn','Syn','Syn','Syn'))
head(genes)
head(genes)
genes<-as.matrix(genes)
ygenes<-melt(genes)
#ygenes$value<-as.numeric(levels(ygenes$value))[ygenes$value]
head(ygenes)

p<-ggplot(ygenes, aes(x=Var1,y=value))
p + geom_boxplot(aes(fill=Var2))




boxplot(ygenes$value~ygenes$Var1, data=ygenes$Var2, main='CT_Values Distribution')


#Write a code that will get you the standard error for each group
summarySE <- function(data=NULL, measurevar, groupvars=NULL, na.rm=FALSE,
                      conf.interval=.95, .drop=TRUE)
{
  library(plyr)
  
  # New version of length which can handle NA's: if na.rm==T, don't count them
  length2 <- function (x, na.rm=FALSE)
  {
    if (na.rm) sum(!is.na(x))
    else       length(x)}
  
  # This does the summary. For each group's data frame, return a vector with
  # N, mean, and sd
  datac <- ddply(data, groupvars, .drop=.drop,
                 .fun = function(xx, col)
                 {
                   c(N    = length2(xx[[col]], na.rm=na.rm),
                     mean = mean   (xx[[col]], na.rm=na.rm),
                     sd   = sd     (xx[[col]], na.rm=na.rm)
                   )},
                 measurevar)
  
  # Rename the "mean" column    
  datac <- rename(datac, c("mean" = measurevar))
  
  datac$se <- datac$sd / sqrt(datac$N)  # Calculate standard error of the mean
  
  # Confidence interval multiplier for standard error
  # Calculate t-statistic for confidence interval: 
  # e.g., if conf.interval is .95, use .975 (above/below), and use df=N-1
  ciMult <- qt(conf.interval/2 + .5, datac$N-1)
  datac$ci <- datac$se * ciMult
  
  return(datac)}

ygenes2<-ygenes[order(ygenes$Var1),]
SEsum <- summarySE(ygenes2, measurevar="value", groupvars=c("Var2", "Var1"))
se<-SEsum$se
value<-SEsum$value
barry<-ggplot(ygenes2, aes(x=ygenes2$Var2, y=ygenes2$value, fill=ygenes2$Var1))
structure<-geom_bar(position='dodge',stat='identity')
limits<-aes(ymax=value+se,ymin=value-se)
dodge<-position_dodge(width = 0.9)
error<-geom_errorbar(limits,position = dodge, width=0.25)
intercept<-geom_hline(aes(yintercept=1),linetype="dashed",colour='red')
barry+structure+intercept+error
