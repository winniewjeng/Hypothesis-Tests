# Type II Error in Two-Tailed Test of Population Mean with Known Variance

# A type II error occurs if the hypothesis test based on a random sample fails to reject 
# the null hypothesis even when the true population mean μ is in fact different from μ0.

# Problem
# Wire Co. purchases steel bars to make cotter pins. Past experience indicates that
# the mean tensil stength of all incoming shipments is 10,000 psi and that the standard 
# deviation is 400 psi. To make a decision about incoming shipments of steel bars, 
# Wire Co. set up a rule for the quality-control inspector: "Take a sample of 100 steel bars.
# At the 0.05 significance level, if the sample mean strength falls between 9,922 psi and 
# 10,078 psi, accept the lot. Otherwise, reject the lot" The probability of making a Type I
# error, of rejecting an acceptable shipment, is 0.05.

# Suppose the population mean of an incoming lot, designated mu1, is really 9,900 psi.
# What is the porbability that the quality-control inspector will fail to reject the shipment,
# thus commiting a type II error?  

# H null: mu = mu0 (the true population mean is the same as the actual population mean)
# H alt: the true population mean is not the same as the actual population mean

# find type II error z
n = 100
sigma = 400
mu1 = 9900 # actual population
x_bar1 = 9922
z_1 = (x_bar1-mu1)/(sigma/sqrt(n))
z_1 # z_1 = 0.55

# find the probability for committing type II error
probability_1 = 1-pnorm(z_1, mean=0, sd=1) # (1-pnorm) b/c it's a right tail, (z_1 = 0.55, inf)
probability_1 # 0.2911597

# Conclusion: 
# If the steel bar sample size is 100, the actual mean population tensil 
# strength is 9,900 psi and the population standard deviation is 400 psi, then the 
# probability of committing a type II error for testing the null hypothesis μ =  9,922 at 
# 0.05 significance level is 29.1%, and the power of the hypothesis test is 70.9%.

# Suppose another shipment has a population mean of 10,120 psi. What is the probability of 
# commiting a type II error?

# find type II error z
n = 100
sigma = 400
mu2 = 10120 # actual population
x_bar2 = 10078
z_2 = (x_bar2-mu2)/(sigma/sqrt(n))
z_2 # z_2 = -1.05

# find the probability for committing type II error
probability_2 = pnorm(z_2, mean=0, sd=1) # it's a left tail, (-inf, z_2 = -1.55)
probability_2 # 0.1468591

# Conclusion: 
# If the steel bar sample size is 100, the actual mean population tensil 
# strength is 10,120 psi and the population standard deviation is 400 psi, then the 
# probability of committing a type II error for testing the null hypothesis μ =  10,078 at 
# 0.05 significance level is 14.7%
