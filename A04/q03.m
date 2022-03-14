T_C=[-40 0 40 80 120 160] + 273;
p=[6900 8100 9350 10500 11700 12800];
A=[numel(T_C) sum(T_C); sum(T_C) sum(T_C.^2)];
b=[sum(p);sum(T_C.*p)];

m=A\b;
slope=m(2);
n=numel(T_C);

fprintf('The slope m is %.4f\n',slope)
r=(n*sum(T_C.*p)-sum(T_C)*sum(p))/sqrt((n*sum(T_C.^2)-sum(T_C)^2)*(n*sum(p.^2)-sum(p)^2));
fprintf('The correlation coefficient is %.4f\n',r)

%Part b
p2=polyfit(T_C,p,1);
slope_b=p2(1)
intercept=p2(2)
TCq=100;p_q=polyval(p2,TCq+273)

%checking the answer
x = 1:10;
yfit = p2(1)*x+p2(2);
hold on;
plot(x,yfit,'r-.')