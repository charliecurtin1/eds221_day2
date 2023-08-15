# data wrangling and viz

library(tidyverse)
library(here)
library(janitor)

plants <- read_csv(here("data", "power_plants.csv")) %>% 
  clean_names()

alabama_plants <- plants %>% 
  filter(state_name == "Alabama")
  
wv_plants <- plants %>% 
  filter(state_name == "West Virginia")

alabama_plot <- ggplot(data = alabama_plants,
       aes(x = install_mw,
           y = total_mw)) +
  geom_point()
