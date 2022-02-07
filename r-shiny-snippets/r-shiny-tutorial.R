
# --------------------------------------------------------------------------
# DATA BASICS

# carrega em memória e disponibiliza o mpg
library(ggplot2)

# mostra o data frame que veio com ggplot2
mpg

# mostra a página de ajuda do dataSet
?mpg

# outro frame. 
cars

# Tibbles - are a data frames with some extra properties.
# não mostra todos os dados
flights



# --------------------------------------------------------------------------
# FILTER OBSERVATIONS

library(nycflights13)
filter(flights, month == 1, day == 1)

# armazenando o resultado numa variável. 
jan1 <- filter(flights, month == 1, day == 1)

# operadores boleanos
&, |, !, xor(x,y)

# fancy
nov_dec <- filter(flights, month %in% c(11, 12))

# R also has && and ||
# vou aprender depois quando usar

# tudo isso retorna NA
# uma espécie de null no mundo R
NA > 5
10 == NA
NA + 10
NA / 2

# verificação de nulo
is.na(NA)

# conta o total de registros
NROW(flights)

# 5 elevado ao quadrado
5 ^ 2


# --------------------------------------------------------------------------
# VARIABLES

# carrega várias bibliotecas úteis
library(tidyverse) # loads dplyr, ggplot2, and others

# select
flights_sml <- select(flights, 
  arr_delay, 
  dep_delay,
  distance, 
  air_time
)

flights_sml

# add columns
mutate(flights_sml,
  gain = arr_delay - dep_delay,
  speed = distance / air_time * 60
)

# similar ao mutate. Mas traz só as coisas novas.
transmute

#  A vectorised function takes a vector of values as input and returns a vector with the same number of values as output.

# obter hora e minuto
transmute(flights,
  dep_time,
  hour = dep_time %/% 100,
  minute = dep_time %% 100
)

# funções úteis
lag(x)   >> coloca NA na primeira casa e avança as demais.
lead(x)  >> coloca NA na última casa e retrocede as demais.
cumsum() >> soma cumulativa



# --------------------------------------------------------------------------
# SUMMARISE TABLES

# média e total
mpg_manufacturer <- group_by(mpg, manufacturer)
summarise(mpg_manufacturer, cty_mean = mean(cty, na.rm = TRUE)) %>% tableHTML()

# If you need to remove grouping, and return to operations on ungrouped data, use ungroup().

# pipe operator
# leia como "então"
%>%

# filtrando um vetor.
mean(arr_delay[arr_delay > 0]) 

# mais funções úteis
# Fortunately, all aggregation functions have an na.rm argument which removes the missing values prior to computation
sum()
mean()
min()
max()
first()
last()
arrange(desc(carriers))
count()
