D = [2.4 1.5 2.4 1.8 1.8 2.9 1.2 3 1.2];
LW = [2.9 2.1 2.3 2.1 1.8 2.7 1.5 2.9 1.5];

%Part a
plot(D,LW, '*', 'markersize', 8)

%Part b
P = polyfit(D,LW,1);
slope = P(1);
intercept = P(2);
yfit = P(1)*x+P(2);  % P(1) is the slope and P(2) is the intercept
hold on;
plot(x,yfit,'r-.')

%Part c
P(1)*1.8+P(2)
%Answer: 2.0370