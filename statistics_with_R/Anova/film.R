fivenum(film$Days)
boxplot(film$Days)
hist(film$Days)
# in bpx plots the outliers are 1.5*IR of the distribution

# grouped box plot
boxplot(film$Days ~ film$Genre)

# one way ANOVA - to see if mean days spent is equal acorss the genre
# look up for means and test for ANOVA
aggregate(Days~Genre, film, mean)
aggregate(Days~Genre, film, sd)


# days model
daysmodel = aov(film$Days ~ film$Genre)
summary(daysmodel)

# Tukey pair wise comparision
TukeyHSD(daysmodel)
# -> can see that none of these p adj are significanlty smaller thhan 0.05 to make a decuision