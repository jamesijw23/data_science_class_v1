library(tidyverse)


setwd("C:/Users/james/OneDrive/Documents/Important_Files/Stat_ed_2018_papers/paper_0_bball_data/0_basketball_data")
nba = read.csv('modern_nba_legends_5292019.csv')
mj_s1_df = nba %>%
  filter(Name == "MJ",Season == "season_1") %>%
  select(Game_Location, Game_Outcome, PTS, AST, PF) %>%
  rename(Points = PTS,
         Assists = AST,
         Personal_Foul = PF)
setwd("C:/Users/james/OneDrive/Documents/Important_Files/teaching_data_science_course/data_science_class_v1")
write.csv(mj_s1_df,'mj_season_1_df.csv')  
