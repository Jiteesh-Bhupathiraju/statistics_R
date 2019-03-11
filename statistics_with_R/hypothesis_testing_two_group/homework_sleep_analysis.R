# form the vectors for college and high school
hwhs= post$hw_hours_HS
hwc = post$hw_hours_college

mean(hwc - hwhs)
t.test(hwc, hwhs, alternative = 'greater')


# Geek and Non-Geek 
greek = post$sleep_Sat[post$greek=='yes']
nongreek = post$sleep_Sat[post$greek=='no']

mean(greek - nongreek)

# t test
t.test(greek, nongreek, alternative = 'less')


# comapring nursuring and biology major students
nur = post[post$major=='Nursing',]
nur$diff = nur$hw_hours_college - nur$hw_hours_HS
hist(nur$diff)

bio = post[post$major=='Biology',]
bio$diff = bio$hw_hours_college - bio$hw_hours_HS
hist(bio$diff)

# two sample independent t test
t.test(nur$diff,bio$diff)
# conclusion -> as the p value is higher than .05 we fail to reject

# learned
# always on finding t-critical we have to find for 0.95 end