%f = @(x) x^4 + 2 *x^3 + 8*x^2 + 5*x;
f = @(x) (x^2)/10 - 2 *sin(x);
x(1) = 0;
x(2) = 1;
x(3) = 4;
acc = 0.01;
error = 1;


f1 = f(x(1));
f2 = f(x(2));
f3 = f(x(3));

for i = 4:15
%while error > acc
    
    
    x(4) = x(2) - ( ((x(2)-x(1))^2 *(f2-f3) - ((x(2)-x(3))^2 * (f2-f1) ) ) / (2* ( (x(2)-x(1)) *(f2-f3) - (x(2)-x(3)) * (f2-f1) )));
    
    fprintf("%.8f \n", f(x(i)));
    
    if x(4) > x(1) 
        x(1) = x(2);  
        x(2)=x(4); 
    else
        x(3) = x(2);
        x(2)=x(4);
    end
    
    f1 = f(x(1));
    f2 = f(x(2));
    f3 = f(x(3));
    
    %fprintf("%.5f %.5f %.5f\n %.5f %.5f %.5f\n ", f1,f2,f3 ,x(i-3),x(i-2), x(i-1));

    error = abs(f(x(1))-f(x(1)));
    fprintf("Value of optima: %.8f  with error: %.8f\n", f(x(2)), error);
end



