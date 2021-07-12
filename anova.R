#plotting family abundance
data<-read.csv("raw_data/raw.csv",header=T,sep="\t")
ANOVA(data$family<data$site)

##Still working on it...mej