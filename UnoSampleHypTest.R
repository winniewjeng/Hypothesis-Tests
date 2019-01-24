## Problem

# Suppose the mean weight of King Penguins found in an Antarctic colony 
# last year was 15.4 kg. In a sample of 35 penguins same time this year in the same colony,
# the mean penguin weight is 14.6 kg. Assume the sample standard deviation is 2.5 kg.
# At .05 significance level, can we reject the null hypothesis that the mean penguin weight
# does not differ from last year?


## Solution

# The null hypothesis is that μ = 15.4. We begin with computing the test statistic.

xbar = 14.6            # sample mean 
mu0 = 15.4             # hypothesized value 
s = 2.5                # sample standard deviation 
n = 35                 # sample size 
t = (xbar-mu0)/(s/sqrt(n)) 
t                      # test statistic 

# We then compute the critical values at .05 significance level.
alpha = .05 
t.half.alpha = qt(1-alpha/2, df=n-1) 
c(-t.half.alpha, t.half.alpha) 


## Answer

# The test statistic -1.8931 lies between the critical values -2.0322, and 2.0322. 
# Hence, at .05 significance level, we do not reject the null hypothesis that
# the mean penguin weight does not differ from last year.

## Alternative Solution

pval = 2 * pt(t, df=n-1)  # lower tail 
pval                      # two−tailed p−value 




