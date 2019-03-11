# checks for applying the multi collinearity is 
# vif
# 1/vif is tolerance when this variable is learned from the other variables and then the amount
# variance explained
# threshold 0.2 -> after all learned only got % left 

# Partial correlations coefficients tell us about the amount of  unique proportion of variance associated
# with that specific variable


# Diagnostcis
# -------------

# draw the residual vs fitted plot, we try to compare the line with 0 to see if its normal
# else we have homoscedascity - fits acros all points as it does with each otehr
# LInearity

# cocks distance
# --------------

# to see if the any point is a influential outlier


# correlation testing
# -------------------

library(SDSFoundations)
res = TempskiResilience


clerk = res[res$Group=='Clerkship',]
vars = c("BDI", "Resilience", 'State.Anxiety', 'Trait.anxiety')
cor(clerk[, vars])

library(psych)

corr.test(clerk[,vars])
corr.test(clerk[,vars])$t # or p for probabilities $t for t values as pearson is form t signficance


# simple linear regression
# ------------------------
# bdi vs relience model
linFit(x = clerk$Resilience, y=clerk$BDI)

model = lm(BDI ~ Resilience, data = clerk)
summary(model)

# confidence 
confint(model)
lmBeta(model)


# Diagonosis
plot(model, which = 1)
# seeign if its a line means linear model fits well, else if curve then linear doesnt fit

cutoff = 4/(model$df)

# to get the most influential points - cooks distance: can remove from data frame
plot(model,which = 4, cook.levels = cutoff, id.n = 5)

# multi regression
mulmodel = lm(BDI ~ Resilience + State.Anxiety + Trait.anxiety, data = clerk)
summary(mulmodel)

# plots
plot(mulmodel, which = 1)
cutoff= 4/mulmodel$df
plot(mulmodel, which = 4, id.n = 8)

confint(mulmodel)
lmBeta(mulmodel) # impact when all r on same score Z
pCorr(mulmodel) # individually