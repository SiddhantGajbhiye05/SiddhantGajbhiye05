%  This script compares the logistic population growth model for the US and  
%  census for population of US year 1790 to 1990

% step 1: plotting the logistic population growth model
t = 1790:10:1990;% generates array of years from 1790 to 1990
l = length(t);
po = []; % generates empty array for population
for i = 1:l
    p = 197273000/(1 + exp(-0.03134*(t(i)-1913.25)));
    po = [po p]; % appends population values to po

end
plot(t,po,'b' )
hold on
% step 2: generate plot from census data provided
data = readtable('Book1.xlsx');
x = data.Year;% to access year column
y = data.Population;% to access population column
plot(x,y,'--r')
%% 

year = 1790:10:1990;
pop = [3929214, 5308483, 7239881, 9638453, 12860702, 17063353, 23191876, 31443321, 38558371, 50189209, 62979766, 76212168, 92228496, 106021537, 123202624, 132164569, 151325798, 179323175, 203302031, 226542199, 248709873];
plot(year,pop,'--r')
%% 
% step 3: to label scale and legend the plot
set(gca,'xlim',[1790 1990])
set(gca, 'XTick', year)
xlabel('Time(in yrs)')
ylabel('Population of the US')
legend({'Population of US(logistic)','Population of US(census)'})
