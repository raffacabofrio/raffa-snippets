library(tidyverse) # loads dplyr, ggplot2, and others
library(tableHTML)

mpg %>% tableHTML()

# cty - city miles per gallon
?mpg

mpg_manufacturer <- group_by(mpg, manufacturer)
mpg_manufacturer %>% tableHTML()


summarise(mpg, cty_mean = mean(cty, na.rm = TRUE)) %>% tableHTML()
summarise(mpg_manufacturer, cty_mean = mean(cty, na.rm = TRUE)) %>% tableHTML()

