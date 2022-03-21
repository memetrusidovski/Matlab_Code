
%Input data
x = [-2 -1 -0.5 0.5 1 2];
y = [-637 -96.5 -0.5 20.5 96.5 637];

%curve fitting
p = polyfit( x, y, 5 )

%generating data for curve plotting
x1 = -2:0.1:2;
y1 = polyval(p,x1);

%plotting
plot(x,y,'o')
hold on
plot(x1,y1)
hold off
legend( 'data','Curve fit','Location','best'  );
xlabel( 'x' );
ylabel( 'y' );
xlim([-3 3])
grid on

sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);