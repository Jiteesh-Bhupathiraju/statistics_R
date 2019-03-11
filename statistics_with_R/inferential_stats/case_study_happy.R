# happiness esrtimation
happy = ss$happy
hist(happy)
mean(happy)
sd(happy)

# sampling for n=5
s=rep(NA, 1000)
for (i in 1:1000){
  s[i] = mean(sample(happy, size = 5))
}

mean(s)
sd(s)

# sampling for n=15
s=rep(NA, 1000)
for (i in 1:1000){
  s[i] = mean(sample(happy, size = 15))
}

mean(s)
sd(s)



# sampling for n=25
s=rep(NA, 1000)
for (i in 1:1000){
  s[i] = mean(sample(happy, size = 25))
}

mean(s)
sd(s)



# Rating for the course
aus = ss$austin
mean(aus)
sd(aus)

# the expected standard deviation is 
# sigma/sqrt(n)

# sampling
s=rep(NA, 1000)
for (i in 1:1000){
  s[i] = mean(sample(aus, size=10))
}

mean(s)
sd(s)