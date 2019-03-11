# to point back from sample to the original population we need central limit theroem
# not just by sampling, but estimating the bigger scenario when not had data

# -> regardless of the original shape, the sample distribution shape is always normal
# -> the larger the sample the normal it will be

# now for this nromal when applied Z - test, we take standard distribuiton as sd/sqrt(n) 


# confidence Intervals
# defining the range of population mean or something is

# so we can use the line to make touch all the sampled means with confidence intervals
# to estimate the mean of the population

# so we are 95% sure with in the range the mean will fall, but its a trade of for precision, as 
# the more range the less precise in estimaiton
# i.e. our original sample will be having that much of Z value i z test


# so how to improve the CI then -> 
# get the standard error, take the z value and * with the mean to add to the mean

# Sampling distributions
mean(ss$age)
sd(ss$age)

hist(ss$age)


# sampling
sample(ss$age, size = 30)

vec = rep(NA, 1000)

for (i in 1:1000){
  vec[i] = mean(sample(ss$age, size = 30))
}

# visualization of sample distribution
hist(vec)
mean(vec)
sd(vec)