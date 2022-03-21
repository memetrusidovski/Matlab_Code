x = [0 8 16 24 32 40];
y = [14.621 11.843 9.87 8.418 7.305 6.413]; 

%curve fitting
p = polyfit( x, y, 5 )
o = polyval(p,x);
b = polyval(p, 27);


%plotting
plot(x,y,'o', x, o, 'c--')