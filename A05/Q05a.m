x = [1 3 5 6 7 9];
y = [1.0 2.172 4.22 5.43 4.912 9.12];
f = 0.0185*x.^5-0.444*x.^4+3.9125*x.^3-15.456*x.^2+27.069*x-14.1;
x1 = linspace(1,9);

s = interp1(x,y,x1,'spline');
plot(x,y,'o',x1,s,'r--');