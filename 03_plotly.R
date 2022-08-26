# source("00_get_data.R")


# Plot based on introduction at
# https://ramikrispin.github.io/coronavirus/articles/intro_coronavirus_dataset.html
p_1 <- plot_ly(data = covid_monthly %>% filter(country == "US"),
               x = ~ date,
               y = ~ cases,
               type = "scatter",
               mode = "line",
               name = ~ country) %>%
  layout(yaxis = list(title = "Deaths"),
         xaxis = list(title = ""))
p_1

p_2 <- plot_ly(data = covid_monthly %>% filter(country == "Canada"),
               x = ~ date,
               y = ~ cases,
               type = "scatter",
               mode = "line",
               name = ~ country) %>%
  layout(yaxis = list(title = "Deaths"),
         xaxis = list(title = ""))
p_2

p_3 <- plot_ly(data = covid_monthly %>% filter(country == "Mexico"),
               x = ~ date,
               y = ~ cases,
               type = "scatter",
               mode = "line",
               name = ~ country) %>%
  layout(yaxis = list(title = "Deaths"),
         xaxis = list(title = ""))
p_3

subplot(p_1, p_2, p_3,
        nrows = 3,
        shareX = TRUE, shareY = FALSE) %>%
  layout(title  = "Selected Countries: Monthly Covid Deaths",
         margin = list(t = 60, b = 60, l = 40, r = 40),
         legend = list(x = 0.05, y = 1),
         yaxis   = list(title = "Label 1"),
         yaxis2  = list(title = "Label 2"),
         yaxis3  = list(title = "Label 3"),
         xaxis   = list(title = "")
  )





