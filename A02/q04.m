m(1) = 4.5;
f = @(x) -2+6*x - 4*x^2+0.5*x^3;
f_d = @(x) 6 - 8*x + 1.5*x^2;

for i = 1:11
    m(i+1)= m(i) - (f(m(i))/f_d(m(i)));
    error(i) = abs(m(i+1)-m(i));
    fprintf("Root at: %.8f With Error of: %d\n", m(i+1), error(i));
end