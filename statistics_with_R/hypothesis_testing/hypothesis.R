# so if the possible outcome is on both sides, then its a two tailed test

# always we reject  , by gathering the data and even gathered and not able to prove, then we 
# failed to reject the null hypothesis. - not accepted the hypothesis

# hence we always try to reject and pass the alternate hypothesis

# Type I error - when no change and opp
# Type II error - when change and opp

# critical values
# for null hypothesis, based on significance level we set the critical value i.e. z value
# for the respective alpha, and will try to see how the sampled parameters will do

# pvalue - not below alpha level i.e. the porbability of both sides is it less than the alpha
# total area (both if two tailed test)

# So basically it falls down to, have the null hypothesis and see where the test results
# fall, i.e. with in our desired significance level

# T - distribution
# -----------------
# when the samples are so small, as replication is so difficult
# in large sample theory the sd is overlooked, as the sample size decreases the sd goes far

# as sample increases the t looks like z, else the critical values will be fatter

# degree of freedom
# -----------------
# n-1

# used when we are not sure of the standard deviation

# Single sample T - test (for 1 sample size ~ 10)
# ------------------------
# so while rejecting the hypothesis, we either do by critical value or by the p value
# inorder to reject we want to fall in outside the significance level

# singel tailed test 
# qt(alpha, degree of freedom )


# T Test
# ========

age = 2012 - br$YearBorn

# checking the assumtption if the distribution is almost normal
hist(age)

# two sided
t.test(age, mu=30)

# single sided
t.test(age, mu=30, alternative = 'less') # or greater