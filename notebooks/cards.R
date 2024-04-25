## Installing packages
# install.packages('RPostgreSQL')
# install.packages('RPostgres')

## Connect to Postgres
library(DBI)
library(ggplot2)
library(lattice)

db <- "postgres"  #provide the name of your db
host_db <- "localhost"
db_port <- "5432"
db_user <- "postgres"
db_password <- "postgres"

con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, user=db_user, password=db_password)

fields <- dbListFields(con, "cards")

results <- dbGetQuery(con, "SELECT name, manavalue FROM CARDS LIMIT 5")

