# total
nrow(post)

# classification of first male student
f = post$classification[post$gender=='Male']
head(f,1)

# percenetage living in campus
top10 = head(post,10)
nrow(top10[top10$live_campus=='yes',])


# vectors for independent analysis
under = post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
upper = post$happy[post$classification=='Junior'|post$classification=='Senior']

t.test(under, upper)
# conclusion: failed to reject -> same

# diff analysis
post$diff = post$happy - post$post_happy
hist(post$diff)

t.test(post$happy,  post$post_happy, paired = T)

# conclusion: failed to reject -> same