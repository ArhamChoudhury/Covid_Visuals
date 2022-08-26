# source("00_get_data.R")

# US only, daily data, single chart
US_daily <- covid %>%
  filter(country == "US") %>%
  ggplot(aes(x=date, y=cases)) +
  geom_line (color = "light blue") +
  geom_point(color = "dark gray") +
  geom_smooth(formula = y ~ x, method = "loess",
              se = FALSE, color = "red") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  theme_minimal()
US_daily

US_daily_plotly <- ggplotly(US_daily)
US_daily_plotly

# 4 countries, daily data, facet chart
select_countries_daily <- covid %>%
  ggplot(aes(x=date, y=cases)) +
  geom_line (color = "light blue") +
  geom_point(color = "dark gray") +
  geom_smooth(formula = y ~ x, method = "loess",
              se = FALSE, color = "red") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  theme_minimal() +
  facet_wrap(~country, scales = "free_y")
select_countries_daily

select_countries_daily_plotly <- ggplotly(select_countries_daily)
select_countries_daily_plotly


# US only, monthly data, single chart,
US_monthly <- covid_monthly %>%
  filter(country == "US") %>%
  ggplot(aes(x=date, y=cases)) +
  geom_line (color = "light blue") +
  geom_point(color = "dark gray") +
  geom_smooth(formula = y ~ x, method = "loess",
              se = FALSE, color = "red") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  theme_minimal()
US_monthly

US_monthly_plotly <- ggplotly(US_monthly)
US_monthly_plotly

# 4 countries, monthly data, facet chart
select_countries_monthly <- covid_monthly %>%
  ggplot(aes(x=date, y=cases)) +
  geom_line (color = "light blue") +
  geom_point(color = "dark gray") +
  geom_smooth(formula = y ~ x, method = "loess",
              se = FALSE, color = "red") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  theme_minimal() +
  facet_wrap(~country, scales = "free_y")
select_countries_monthly

select_countries_monthly_plotly <- ggplotly(select_countries_monthly)
select_countries_monthly_plotly







# end


