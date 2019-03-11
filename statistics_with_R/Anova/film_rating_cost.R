ft =film[film$Film=='Titanic',]

# highest ranked film in Uni studio 
head(film[film$Studio=='Uni.',],1)

# Lowest IMBD rate, for top 10 grossing
ftop10 = head(film[with(film, order(-Gross)),],10)
min(ftop10$IMDB)


# Analysis - if Rating has effect on the budget
table(film$Rating)

# Average budget of each group
aggregate(Budget ~ Rating, film ,mean) # take care of budget num, grouped by the rating, mean
aggregate(Budget ~ Rating, film ,sd)


# Visualize with box plot
boxplot(film$Budget~film$Rating)

# ANOVA
model =  aov(film$Budget~film$Rating)
summary(model)

# Post hocs
TukeyHSD(model)











# Analysis - if Rating has effect on the IMDB

# Average budget of each group
aggregate(IMDB ~ Rating, film ,mean) # take care of budget num, grouped by the rating, mean
aggregate(IMDB ~ Rating, film ,sd)


# Visualize with box plot
boxplot(film$IMDB~film$Rating)

# ANOVA
model =  aov(film$IMDB~film$Rating)
summary(model)
# as the f statistic is way less, fail to reject and the only reason in running the test is 
# to find whihc is different

# Post hocs
TukeyHSD(model)














# Success based on the Studios
table(film$Studio)
aggregate(Days~Studio, film ,mean)

# ANOVA
model = aov(film$Days ~ film$Studio)
summary(model)
TukeyHSD(model)



# Domestical Earnings for studios
aggregate(Gross.Dom~Studio, film ,mean)
model = aov(film$Gross.Dom~film$Studio)
summary(model)
TukeyHSD(model)

boxplot(film$Pct.Dom~film$Studio)


# if there are 3 groups and 45, 15 in each
# df num = 3
# df demon = 15-1 * no of groups

# critical values for F distribution
# qf(alpha, dfn, dfd)



# SStotal calucalation


# domestic percent comparision for low and m/h earnings companies
low = film[film$Budget<100,]
med = film[film$Budget>=100 & film$Budget<150,]
high = film[film$Budget>=150,]

# mean for each group
mean(high$Pct.Dom, na.rm=T)
mean(med$Pct.Dom, na.rm=T)
mean(low$Pct.Dom, na.rm=T)

film$comp = NA
film$comp[film$Budget<100] = 'l'
film$comp[film$Budget>=100 & film$Budget<150] = 'm'
film$comp[film$Budget>150] = 'h'

model = aov(film$Pct.Dom~film$comp)
summary((model))
TukeyHSD(model)