# Year Allen played

a = head(acl[acl$Artist=='Allen Toussaint',],1)

# no of columns of N/A values
sum(is.na(a))


# Chi goodness of fit model
# -------------------------

gen = table(acl$Gender)
e = c(0.5, 0.5)

chisq.test(gen,  p=e)$expected
gen

chisq.test(gen,  p=e)

# as p < 0.05 we reject there are almost equal


# independence test
gentop = table(acl$Gender, acl$BB.wk.top10)
gentop

chisq.test(gentop, correct = F)$expected
chisq.test(gentop, correct = F)

# as it is less we again fail to reject -> 


# 1. Are each of the four musical genres equally represented on Austin City Limits?   
# 2. Are some genres more likely to draw a large (100K+) Twitter following than others?
genr = table(acl$Genre)
genr

chisq.test(genr)$expected
chisq.test(genr)

gentwit = table(acl$Genre, acl$Twitter.100k)
gentwit
prop.table(gentwit, 2)

chisq.test(gentwit, correct = F)


# proportion of the female in two years has changed or not
acl$Recent[acl$Year < 2012] = 0
acl$Recent[acl$Year >= 2012] = 1

# Female performers proportion change -> means comparision to males

femrec = table(acl$Gender=='F', acl$Recent)
chisq.test(femrec)$expected


chisq.test(femrec)