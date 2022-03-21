x = [0 8 16 24 32 40];
y = [14.621 11.843 9.87 8.418 7.305 6.413];

  
u = linspace(x(1),x(end),6)';

[k,k] = histc(u,x);
 
 
n = length(x);
k(k == n) = n - 1;
t = (u - x(k))./(x(k+1) - x(k));
yu = (1-t).*y(k) + t.*y(k+1);

plot(x,y,'bo',u,yu,'r-')
xlabel X
ylabel Y