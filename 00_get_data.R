library(tidyverse)
library(coronavirus)
library(scales)
library(plotly)
library(devtools)
library(lubridate)

# devtools::install_github("RamiKrispin/coronavirus") # Github version (refreshed on a daily bases):

# tidy format covid data from: https://github.com/RamiKrispin/coronavirus
# devtools version of package refreshed as of "2022-08-26", this has data through "2022-08-23"


data("coronavirus")
#coronavirus::update_dataset()

df <- coronavirus

# get small piece of the data for testing visuals
# daily data for 4 countries
covid <- df %>%
  filter(type == "death") %>%
  select(-type) %>%
  filter(country %in% c("US", "Canada", "Mexico", "South Africa")) %>%
  select(date, country, cases) %>%
  group_by(date, country) %>%
  summarise(cases = sum(cases),
            .groups = "drop") %>%
  arrange(country, date) %>%
  filter(cases > -100)  # looks like there are a few large negatives due to corrections, ignore those
covid


# monthly data for 4 countries
covid_monthly <- covid %>%
  mutate(month = lubridate::month(date, label = TRUE)) %>%
  mutate(year  = lubridate::year(date)) %>%
  group_by(month, year, country) %>%
  summarise(cases = sum(cases),
            .groups = "drop") %>%
  arrange(country, year, month) %>%
  mutate(date = paste0(year, "-", month, "-01")) %>%
  mutate(date = ymd(date)) %>%
  select(date, country, cases)
covid_monthly



# rm(coronavirus)
