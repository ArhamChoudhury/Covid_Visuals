# from slack message
fig <- subplot(bd, br, gh, ind, il, sn, za, uk, us,
               nrows = 3, shareX = TRUE, shareY = FALSE) %>%
  layout(annotations = annotations,
         yaxis = list(title = "Inferred cases per 100k"),
         xaxis = list(title = "",
                      tickformat = "%b"),
         xaxis2 = list(title = "Date",
                       tickformat = "%b"),
         xaxis3 = list(title = "",
                       tickformat = "%b")
  )

# my adaptation of slack message
fig <- subplot(p_1, p_2, p_3,
               nrows = 3, shareX = TRUE, shareY = FALSE) %>%
  layout(yaxis = list(title = "Inferred cases per 100k"),
         xaxis = list(title = "",
                      tickformat = "%b"),
         xaxis2 = list(title = "Date",
                       tickformat = "%b"),
         xaxis3 = list(title = "",
                       tickformat = "%b")
  )
fig


# y label moves around!!
fig_ac <- subplot(p_1, p_2, p_3,
               nrows = 3, shareX = TRUE, shareY = FALSE) %>%
  layout(title  = "Selected Countries: Monthly Covid Deaths",
         yaxis   = list(title = "Label 1"),
         yaxis2  = list(title = "Label 2"),
         yaxis3  = list(title = "Label 3"),

         xaxis = list(title = "",
                      tickformat = "%b"),
         xaxis2 = list(title = "Date",
                       tickformat = "%b"),
         xaxis3 = list(title = "",
                       tickformat = "%b")
  )
fig_ac

# y label moves around!! v2
fig_ac_2 <- subplot(p_1, p_2, p_3,
                  nrows = 3, shareX = TRUE, shareY = FALSE) %>%
  layout(yaxis2  = list(title = "Label"),

         xaxis = list(title = "",
                      tickformat = "%b"),
         xaxis2 = list(title = "Date",
                       tickformat = "%b"),
         xaxis3 = list(title = "",
                       tickformat = "%b")
  )
fig_ac_2


# add master titles
# from: https://stackoverflow.com/questions/58849925/plotly-how-to-apply-different-titles-for-each-different-subplots

# end


