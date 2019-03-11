# if we run the individual t tests, as the basic assumption is that the independence 
# we might get affected

# so we get the difference and we try to see if its value is ==0, back to single sample t test


hist(post$exclusive)
hist(post$post_exclusive)

# even though these are not normal, the differences has to be normal
diff = post$exclusive - post$post_exclusive
hist(diff)

t.test(post$exclusive, post$post_exclusive, paired = T )
# as the p < 0.05 we reject as its less

# Run independent t test for two groups
# compare sleep of male and female

fsleep = post$sleep_Tues[post$gender=='Female']
msleep = post$sleep_Tues[post$gender=='Male']

hist(fsleep)
hist(msleep)


t.test(fsleep, msleep)