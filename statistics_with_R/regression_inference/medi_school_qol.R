# data
nrow(temp)

# small analysis
a=head(temp[temp$MS.QoL==10,],1)
a$Age

top10 = head(temp,10)
nrow(top10[top10$MS.QoL>5,])

# clinical sciences students
vars = c("QoL", "BDI")
clin = temp[temp$Group=='Clinical Sciences',]

cor(clin[,vars])

lmodel = lm(QoL ~ BDI, data = clin)
summary(lmodel)
confint(lmodel)


# plots
plot(lmodel, which = 1)
cutoff = 4/lmodel$df
plot(lmodel, which = 4, cook.levels = cutoff)



# Multi linear regression
# ------------------------
vars = c("MS.QoL", "DREEM.S.SP", "DREEM.A.SP", "Resilience", "BDI", "Age")
cor(clin[,vars], use = 'pairwise.complete.obs')

corr.test(clin[,vars], use = 'pairwise.complete.obs')
pCorr(mmodel)

#multi linear model
mmodel = lm(MS.QoL ~ DREEM.S.SP+DREEM.A.SP+Resilience+BDI+Age, data = clin)
summary(mmodel)
confint(mmodel)

# Diagnostics - to check is there is a collinearity
library(car)
vif(mmodel)
plot(mmodel, which=1)
cutoff = 4/mmodel$df
plot(mmodel, which = 4, cook.levels = cutoff)

lmBeta(mmodel) - # beta standard
round(pCorr(mmodel),4) # uniquely account in the last column


# which parameter has the highest impact on Med School QoL
bs = temp[temp$Group=='Basic Sciences',]
vars= c("MS.QoL","WHOQOL.PH","WHOQOL.PSY" , "WHOQOL.SOC", "WHOQOL.ENV")
cor(bs[,vars])

mmodel = lm(MS.QoL ~ WHOQOL.PH + WHOQOL.PSY+ WHOQOL.SOC+ WHOQOL.ENV, data = bs)
corr.test(bs[,vars], use = 'pairwise.complete.obs')$t

summary(mmodel) # tells about hwo much increase will be seen in end


# BDI ~ state and trait

clin = temp[temp$Group=='Clinical Sciences',]
vars=c('BDI', "State Anxiety", "Trait anxiety")
cor(clin[,vars])

mmodel = lm(BDI~ `State Anxiety` + `Trait anxiety`, data = clin)
summary(mmodel)


lmBeta(mmodel)
pCorr(mmodel)

# from the normal coefficient table i.e. the summary table
# we can find the r2 by SS(regre)/SS(regre) + SS(residuals)