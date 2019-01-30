# One-Tailed Normal Test of Population mean with known variance

# Problem
# Suppose the food label on a cookie bag states that there is at most 2 grams of saturated 
# fat in a single cookie. In a sample of 35 cookies, it is found that the mean amount of 
# saturated fat per cookie is 2.1 grams. Assume that the population standard deviation is 
# 0.25 grams. At .05 significance level, can we reject the claim on food label?

# H null: population mean <= 2 (at most 2 grams of saturated fat)
# H alt: population mean > 2 (more than 2 grams of saturated fat)

# find critical value v
alpha = 0.05
z.alpha = qnorm(1-alpha)
z.alpha # cv z = 1.644854

# test statistic z
n = 35
x_bar = 2.1
mu0 = 2
sigma = 0.25
z = (x_bar-mu0)/(sigma/sqrt(n))
z # test stas z = 2.366432

# conclusion: Reject null. There is more than 2 grams of saturated fat in a cookie
