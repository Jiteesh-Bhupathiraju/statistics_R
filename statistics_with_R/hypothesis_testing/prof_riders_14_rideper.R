# subsetting
riders14 = br[br$Events14>=5,]
r14per = riders14$RidePer14

# mean and std
mean(r14per)
sd(r14per)

# t test
length(r14per)
t.test(r14per, mu=41)



# conversion of the earning into log
ear_per = br$Earnings12/br$Events12
ear_per = ear_per[!is.na(ear_per)]
hist(ear_per)

# making it normal
lear_per = log(ear_per)
hist(lear_per)

# mean 
mean(lear_per)
t.test(lear_per)


# Learned regarding t distribution
# --------------------------------

# to find the critical values, on both sided or singel side with alpha is using qt

# to find the prob with a t statistic value is pt with df