install.packages(dplyr)
titanic3$embarked[titanic3$embarked == ""] <- "S"
titanic4<-titanic3
titanic4$age[which(is.na(titanic3$age))]<-mean(titanic3$age,na.rm=TRUE)
mean(titanic3$age,na.rm=TRUE)
titanic4$boat[titanic4$boat == ""] <- NA
titanic4$has_cabin_number <- NA
titanic4$has_cabin_number <- ifelse(titanic4$cabin=="", 0, 1)
