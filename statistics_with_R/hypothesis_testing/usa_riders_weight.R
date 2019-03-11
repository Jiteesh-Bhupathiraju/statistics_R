# form subset
usa = br[br$Country=='USA',]
usaw = br$Weight
mean(usaw)
sd(usaw)

hist(usaw)

# two sided test
t.test(usaw, mu=190)
length(usaw)

# the p value, 95 percent boundaries, and t value all show up with t-test