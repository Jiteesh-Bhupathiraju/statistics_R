# no of studnets 
nrow(ss)

# in first 10, how many have letter long than 5
top10 = head(ss,10)
nrow(top10[top10$name_letters>5,])


# name for student of 40% less happy
h = head(ss[ss$happy < 40,],1)
h$name_letters


# interested column
nl = ss$name_letters
hist(nl)
fivenum(nl)
mean(nl)
sd(nl)

# drawing the samples
samples= rep(NA, 1000)
for (i in 1:1000){
  samples[i] = mean(sample(nl, size = 5))
}


hist(samples)
mean(samples)
sd(samples)

sd(nl)/sqrt(5)


# sampling at n=15 and 25
samples= rep(NA, 1000)
for (i in 1:1000){
  samples[i] = mean(sample(nl, size = 15))
}


hist(samples)
mean(samples)
sd(samples)

sd(nl)/sqrt(5)
###############
samples= rep(NA, 1000)
for (i in 1:1000){
  samples[i] = mean(sample(nl, size = 25))
}


hist(samples)
mean(samples)
sd(samples)

sd(nl)/sqrt(5)



# hence observed that as the smaple size increase the standard deviation decreases, even
# will be less than the original distribution


# Analysis
# avg of name length
mean(nl)
sd(nl)
hist(nl)