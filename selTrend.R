library(RSelenium)
library(wdman)
remDr = remoteDriver(remoteServerAddr="localhost",port = 4444L,browserName = "chrome")
remDr$open(silent=T)
remDr$navigate("https://trends.google.com/trends/")

webelm<-remDr$findElement("id","input-0")
webelm$sendKeysToElement(list("logan",key='enter'))


webelm45<-remDr$findElement("class","widget-actions-menu")
webelm45$clickElement()

webelm58<-remDr$findElement("class","csv-image")
webelm58$clickElement()


setwd('C:/Users/***/Downloads')

mydata <- read.csv("multiTimeline.csv")

matplot(mydata[, 1], type="l")
