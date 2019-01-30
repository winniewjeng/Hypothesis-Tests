# One Tail Test of Population Mean with Unknown Variance

# Problem
# Suppose the manufacturer claims that the mean lifetime of a light bulb is more than 10,000
# hours. In a sample of 30 light bulbs, it was found that they only last 9,900 hours on 
# average. Assume the sample standard deviation is 125 hours. At .05 significance level,
# can we reject the claim by the manufacturer?

# H null: mu0 >= 10000 (lifetime of a light bulb is at least to 10,000)
# H alt: mu0 < 10000 (lifetime of a light bulb is less than 10,000)

# test stats t
mu0 = 10000
n = 30
x_bar = 9900
s = 125
t = (x_bar-mu0)/(s/sqrt(n))
t # test stats t = -4.38178

# critical value t
alpha = 0.05
t.alpha = qt(1-alpha, df = n-1)
-t.alpha # cv t = -1.699127

# Conclusion: The test statistic -4.3818 is less than the critical value of -1.6991.
# Hence, at .05 significance level, we can reject the claim that mean lifetime of a 
# light bulb is above 10,000 hours.

