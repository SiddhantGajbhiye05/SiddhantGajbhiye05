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



