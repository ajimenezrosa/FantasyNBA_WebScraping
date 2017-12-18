





library(rvest)
NBA_f <- read_html("http://games.espn.com/fba/tools/projections?leagueId=54640")
NBA_f



results <- NBA_f %>% html_nodes("#playertable_0")



webpage <- read_html("https://www.nytimes.com/interactive/2017/06/23/opinion/trumps-lies.html")
results <- webpage %>% html_nodes(".short-desc")

table = html_table
results



url <- "http://games.espn.com/fba/tools/projections?leagueId=54640"
population <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
population <- population[[1]]
population[,5]
mean(population[,5])
reb = population[,5]
reb = reb[-1]

mean(as.numeric(reb[]))

#point guard data
urlpg = "http://games.espn.com/fba/tools/projections?leagueId=54640&avail=-1&slotCategoryId=0"
populationpg <- urlpg %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationpg <- populationpg[[1]]


urlsg = "http://games.espn.com/fba/tools/projections?leagueId=54640&slotCategoryId=1"
populationsg <- urlsg %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationsg <- populationsg[[1]]

urlsf = "http://games.espn.com/fba/tools/projections?leagueId=54640&slotCategoryId=2&startIndex=0"
populationsf <- urlsf %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationsf <- populationsf[[1]]

urlpf = "http://games.espn.com/fba/tools/projections?leagueId=54640&slotCategoryId=3"
populationpf <- urlpf %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationpf <- populationpf[[1]]


urlc = "http://games.espn.com/fba/tools/projections?leagueId=54640&slotCategoryId=4"
populationc <- urlc %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationc <- populationc[[1]]


pg_points = as.numeric(populationpg[,8])
populationpg[,11]

dpg = c()
for(i in 1:41){
  if(populationpg[i,3]=="DROB")
  dpg = c(dpg,populationpg[i,11])
}

sum(as.numeric(dpg))

index<-which(((testset$STATUS == "DROB" ))==1)
newtestset<-testset[index,]

testset = populationpg[-1,]
testset = testset[,-1]

nametest = testset
nametest[duplicated(nametest)]
nametest = nametest[,2]
duplicated(nametest)
nametest = unique(nametest)
nametest[-11]




urlpg = "http://games.espn.com/fba/tools/projections?leagueId=54640&avail=-1&slotCategoryId=0"
populationpg <- urlpg %>%
  read_html() %>%
  html_nodes(xpath='//*[(@id = "playertable_0")]') %>%
  html_table()
populationpg <- populationpg[[1]]
populationpg = populationpg[-1,]
populationpg = populationpg[,-1]


tnames = populationpg
tnames = tnames[,2]
tnames = unique(tnames)
tnames = tnames[-1]
tnames = tnames[-11]
tnames = tnames[-11]



data1 = populationpg
index<-which(((data1$STATUS=='DROB'))==1)
data1<-data1[index,]
total1 = sum(as.numeric(data1$TOTAL))






