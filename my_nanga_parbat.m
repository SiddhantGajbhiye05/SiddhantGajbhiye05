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



    
    



    
    







    
    

 


