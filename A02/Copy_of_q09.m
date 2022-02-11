f = @(x) x^4 + 2 *x^3 + 8*x^2 + 5*x;
%f = @(x) (x^2)/10 - 2 *sin(x);
x(1) = -2;
x(2) = -1;
x(3) = 1;
acc = 0.01;
error = 1;


f1 = f(x(1));
f2 = f(x(2));
f3 = f(x(3));

for i = 4:15
%while error > acc
    
    
    x(i) = x(i-2) - ( ((x(i-2)-x(i-3))^2 *(f2-f3) - ((x(i-2)-x(i-1))^2 * (f2-f1) ) ) / (2* ( (x(i-2)-x(i-3)) *(f2-f3) - (x(i-2)-x(i-1)) * (f2-f1) )));
    
    fprintf("%.8f \n", f(x(i)));
    
    if x(i) > x(i-3) 
        x(i-3) = x(i-2);  
        x(i-2)=x(i); 
    else
        x(i-1) = x(i-2);
        x(i-2)=x(i);
    end
    
    f1 = f(x(i-3));
    f2 = f(x(i-2));
    f3 = f(x(i-1));
    
    fprintf("%.5f %.5f %.5f\n %.5f %.5f %.5f\n ", f1,f2,f3 ,x(i-3),x(i-2), x(i-1));

    %error = abs(
end


