
setwd("~/")
library(gtrendsR)
library(reshape2)
library(ggplot2)
library(scales)

bots = gtrends(c("data privacy", "data security", "ashley madison"), geo="US", time="all")
bot4dat<-bots$interest_over_time

ggplot(data=bot4dat, aes(x=date, y=as.numeric(as.character(hits)), group=keyword)) + 
  geom_line(aes(color=keyword), size=1.2)+
  ylim(0,100) + xlab(NULL) + ylab("Search hits") + theme_bw() 

ggsave("trends.png", height=4, width=6, units="in", dpi=720)


