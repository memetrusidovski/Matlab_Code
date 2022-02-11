%interval
a = -1;
b = 0;
c = (a + b )/ 2;

iterations = 10;
acc = 0.001;
i = 0;
f =@(x) -12-21*x+18*x^2-2.75*x^3;

x_l = a;
x_r = b;
while abs(x_l - x_r) > acc
    c = (x_l + x_r )/ 2;
    prod = f(c) * f(x_l);
    
    if prod > acc
        x_l = c;
    else
        if prod < acc
            x_r = c;
        end
    end
    fprintf("Iteration - %d = %d\n", i, c);
    i = i + 1;
end
fprintf("Answer: %d", c)