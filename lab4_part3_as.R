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

# Create a subset, then graph

db_subset <- db %>% 
  filter(country_name %in% c("Afghanistan", "Japan", "United States", "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both")

# Create a basic line graph

ggplot(db_subset, aes(x = year, 
                      y = deaths_per_100k)) +
  geom_line(aes(color = country_name))

