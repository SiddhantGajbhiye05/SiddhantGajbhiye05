% Generate a population of uniformly distributed random numbers between 3 and 6 of count N = 105
% plot the probability density function for the distribution of 
% sample means keeping in mind that the probability density is not the same as a histogram nor is it the same as
% the histogram count normalized by total count. Given that the mean of the uniform distribution between
% [a, b] is given by (a + b)/2 and its variance is (a − b)/12, show that the sampling distribution of means
% agrees with the Central Limit Theorem. Without showing in the code, write in the answer sheet provided
% what would be the value of the sample mean from any random sample when n → ∞. Report the code in a
% single script titled my_clt.m
% (remember that MATLAB rand generates uniform random numbers between 0 and 1). Draw 500 samples
% of size n = 20 from it using SRSWR.
x = 6-3*rand(100000000,1);
nsamp = 500;
nsz = 20;
samp_mean = zeros(nsamp,1);% zeros column vector for samp mean
for i = 1:nsamp% for loop for 500 samples
    sampler = randi(100000,[nsz,1]);
    samp = x(sampler);% simple random sampling with replacement
    samp_mean(i) = mean(samp);% appends ith sample mean values to the column vector created above
end

% this is sample distribution
histogram(samp_mean)
xlabel('x_(mean)')
ylabel('P(X_(mean)')

% in pdf y = 1/(entity for which the distribution is being calculated)
% to obtain pdf from histogram 
[N,bins] = hist(samp_mean,20);
dx = bins(2)-bins(1);%bin width
pdf = N/(sum(N)*dx);

% fits data to normal distribution
h = fitdist(samp_mean, 'normal');
bar(bins,pdf)
mu = h.mu;
sigma = h.sigma;

% calculating pdf px
px = 1/(sqrt(2*pi)*sigma)*exp(-0.5*((bins-mu)/sigma).^2);
hold on
plot(bins,px,'r-')
xlabel('X_{mean}')
ylabel('P(X_{mean}')
% histogram divided by total no. of points x bin width
% is pdf



