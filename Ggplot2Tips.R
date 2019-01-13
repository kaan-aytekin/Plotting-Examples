library(ggplot)
							#Line plot
ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))+
  geom_point(aes(color = Home.Value)) +
  geom_line(aes(y = pred.SC))

ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))+
  geom_point(aes(color = Home.Value)) +
  geom_smooth()#Smoothed

							#Subplot
p1 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
    geom_line() +
    ggtitle("Growth curve for individual chicks")

# Second plot
p2 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) +
    geom_point(alpha=.3) +
    geom_smooth(alpha=.2, size=1) +
    ggtitle("Fitted growth curve per diet")

# Third plot
p3 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, colour=Diet)) +
    geom_density() +
    ggtitle("Final weight, by diet")

# Fourth plot
p4 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, fill=Diet)) +
    geom_histogram(colour="black", binwidth=50) +
    facet_grid(Diet ~ .) +
    ggtitle("Final weight, by diet") +
    theme(legend.position="none")        # No legend (redundant in this graph)    
multiplot(p1, p2, p3, p4, cols=2)

							#Multiple Plots
ggplot(ChickWeight, aes(colour=Diet, group=Chick)) +
    geom_line(x=Time, y=weight, ) +
    geom_line(x=Time, y=color, )

							#Histogram
ggplot(housing, aes(x = Home.Value))+
  geom_histogram(stat = "bin", binwidth=4000)

							#Barchart
ggplot(housing.sum, aes(x=State, y=Home.Value)) + 
  geom_bar(stat="identity")
						
							#Pie chart
ggplot(df, aes(x="", y=share, fill=brand)) + geom_bar(stat="identity", width=1)
 +coord_polar("y", start=0) + geom_text(aes(label = paste0(round(value*100), "%")), position = position_stack(vjust = 0.5))
 + scale_fill_brewer(palette="Dark2")
 + labs(x = NULL, y = NULL, fill = NULL, title = "Phones - Market Share")
 + theme_classic() + theme(axis.line = element_blank(),
          axis.text = element_blank(),
          axis.ticks = element_blank(),
          plot.title = element_text(hjust = 0.5, color = "#666666"))



							#Table

ggplot(housing.sum, aes(x=State, y=Home.Value)) + 
  geom_bar(stat="identity")

							#Scatterplot

ggplot(dat, aes(x = CPI, y = HDI)) +
geom_point(aes(color = Region, size =  HDI.Rank))

							#Time series plot

ss <- subset(economics, date > as.Date("2006-1-1"))
ggplot(data = ss, aes(x = date, y = pop)) + 
  geom_line(color = "#FC4E07", size = 2)
