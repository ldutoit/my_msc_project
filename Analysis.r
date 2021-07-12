#plotting family abundance
data<-read.csv("raw_data/raw.csv",header=T,sep="\t")
abundance<-sort(table(data$Family))
tenmostcommon<-abundance[(length(abundance)-10):length(abundance)]
pdf("Figures/abundance_family.pdf")

x <- barplot(tenmostcommon, xaxt="n",col="black")
labs <- names(tenmostcommon)
text(cex=1, x=x, y=-3.25, labs, xpd=TRUE, srt=45)
dev.off()
