x1=[0 1 1 2 2 3 3 4 4]';
x2=[0 1 2 1 2 1 2 1 2]';

y=[15.1 17.9 12.7 25.6 20.5 35.1 29.7 45.4 40.2]';

z = [[1 1 1 1 1 1 1 1 1]' x1 x2]
%Equation of plane  
a = (z'*z)\[z'*y];
yp = z*a;
sr = sum((yp-y).^2);
st = sum((y - mean(y)).^2);
r2 = (st - sr)/st;
r = sqrt(r2);
sny = sqrt(sr/length(y)-3);


fprintf('The Coeffiecient of fit is %.4f\n',r2)
fprintf('The standard error is %.4f\n',sr)
fprintf('The correlation coefficeint is %.4f\n',r)
