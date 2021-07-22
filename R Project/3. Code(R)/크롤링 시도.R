library(httr)
library(stringr)
library(rvest)
base_url <- 'https://www.basketball-reference.com/leagues/NBA_2021_per_game.html'
html <- read_html(base_url)

sort <- html %>% 
    html_node('.sortable') %>% 
    html_node('tbody') %>% 
    html_node('tr')
sort_1 <- sort[1]
sort_1