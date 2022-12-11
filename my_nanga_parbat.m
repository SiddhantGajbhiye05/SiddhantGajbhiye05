% The Nanga Parbat in the western Himalayas is a growing mountain. Each year, its elevation increases by
% 7 mm. If its present height is 8, 126 meters, plot its changing elevation for the next 20 years as a function of
% time. If somehow, the rate of its growth was to increase by 20% after the first 10 years, then how would its
% height grow as a function of time? Make a plot to show this on the same axis as the constant-rate growth time
% series so that one can compare the two time-series easily. Make sure that the two time-series have legends
% and different colors so that one can easily identify which time series he/she is looking at. Remember, an axis
% without labels conveys no information! Write all of this in a neat script my_nanga_parbat.m




% step 1: plotting for growth rate 7mm
t = 1:20;
ho = 8126;
g_rate = 0.007;
h = ho + g_rate*t;
h1 = [];
x = [];
plot(t,h)
hold on
for i = 11:20
    x = [x i];
    n = ho + (g_rate+(0.2*g_rate))*i;
    h1 = [h1 n];
    
    
        
end
h2 = [h(1:10) h1];
plot(t,h2)
xlabel('years')
ylabel('height')
legend('growth rate 7mm/per year', ' growth rate increased by 20%')



    
    



    
    







    
    

 


