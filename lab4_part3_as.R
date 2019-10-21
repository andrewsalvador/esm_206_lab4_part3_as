#----------------
# Andrew Salvador, lab 4, 21 October 2019
#----------------


library(tidyverse)
library(janitor)
library(here)

# Read in data:

db <- read_csv(here("data", "disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

