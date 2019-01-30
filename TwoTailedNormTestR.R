# Two-Tailed Test of Population Mean with Known Variance

# Problem
# Suppose the mean weight of King Penguins found in an Antarctic colony last year was 15.4 kg.
# In a sample of 35 penguins same time this year in the same colony, the mean penguin weight 
# is 14.6 kg. Assume the population standard deviation is 2.5 kg. At .05 significance level, can 
# we reject the null hypothesis that the mean penguin weight does not differ from last year?

# find critical value z
alpha = 0.05
z.half.alpha = qnorm(1-alpha/2)
c(-z.half.alpha, z.half.alpha) # cv z = (-1.959964, 1.959964)

# find test stats z
mu0 = 15.4
n = 35
x_bar = 14.6
sigma = 2.5
z = (x_bar-mu0)/(sigma/sqrt(n))
z # test stats z = -1.893146

# Conclusion: The test statistic -1.8931 lies within the critical values (-1.959964, 1.959964)
# Hence, at .05 significance level, we do not reject the null hypothesis that the mean penguin
# weight does not differ from last year

