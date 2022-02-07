install.packages('RPostgres')

library(DBI)
library(RPostgres)

# para o pipe funcionar ( %>% )
library(tidyverse) 

con <- dbConnect(RPostgres::Postgres(), dbname = "dashboard", host="127.0.0.1", port=5432, user="postgres", password="goku123") 

dbListTables(con) 

countries <- dbGetQuery(con, "SELECT * FROM countries LIMIT 10") 

countries %>% str()