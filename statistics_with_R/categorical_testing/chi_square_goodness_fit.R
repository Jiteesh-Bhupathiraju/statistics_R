# Goodness Fit

gtab = table(acl$Grammy)
gtab

claim = c(2/3, 1/3)

chisq.test(gtab, p=claim)
chisq.test(gtab, p=claim)$expected

# as the p value < .05 then reject the null hypothesis, i.e. these are the actual proportions




# Chi square Independent
# ----------------------
# coningency table
ga = table(acl$Grammy, acl$Age.Group)
ga

chisq.test(ga)$expected # to check if we have all the measurements correct

chisq.test(ga, correct = F) # F -> we dont have the not independence