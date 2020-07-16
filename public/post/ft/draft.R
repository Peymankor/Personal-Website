library(lemon)
library(ggrepel)

org_sel_con_movavg2 <- org_sel_con_movavg1
org_sel_con_movavg2$name <- as.character(org_sel_con_movavg2$Country.Region)
setwd("/home/peyman/superpack/GithubR/Personal-Website/content/post/FT")
png(file="saving16.png",
    width=2500, height=2225)
ggplot(org_sel_con_movavg1, aes(id, week_movavg, color=Country.Region)) +
  geom_path(color='blue', lineend = "round", size=2) +
  gghighlight() +
  #annotate("text", x = 1, y = 10, label = "Some text") +
  #facet_rep_wrap(~ Country.Region, nrow = 8, scales = "free", repeat.tick.labels = FALSE) +
  facet_wrap(~ Country.Region, nrow = 8, scales = "free_x") +
  #ft_theme(base_size = 20) +
  scale_y_log10(limits=c(1,1000)) +
  scale_x_continuous(breaks = c(0,30,60,90)) +
  theme(panel.grid.major.x =element_line(colour = "wheat4"),
        panel.grid.major.y =element_line(colour = "wheat4"),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank()) +
  theme(axis.text = element_text(colour = "black", size = 24, face = "bold")) +
  theme(axis.title.x = element_text(colour = "black", size = 28, face = "bold", vjust = 0.8)) +
  theme(strip.text = element_text(size=24, colour = "blue4", face = "bold")) +
  theme(panel.spacing.y = unit(3, "lines")) +
  labs(title="\n Daily Death tolls",
       x ="\n Days since average daily deaths passed 3 \n", subtitle = " \n Daily Death with Coronavisrus (7-day Rolling Average), by number of the days since 3 daily deaths first recorde \n ",
       caption = "Graphics: Peyman Kor / @peymankor \n Source of data: coronavisus package developed by Rami Krispin") + 
  theme(
    plot.title = element_text(color = "black", size = 40, face = "bold"),
    plot.subtitle = element_text(color = "black", size = 30),
    plot.caption = element_text(color = "green", face = "italic")  
    ) +
  theme(panel.background = element_rect(fill = "seashell2")) +
  theme(plot.background = element_rect(fill = "seashell2")) + 
  theme(panel.border = element_blank()) 
dev.off()



