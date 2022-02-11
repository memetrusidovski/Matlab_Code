r = 2;
L = 5;
V = 8;

f = @(h) 8 - 5 *(4*acos(0.5*(2-h))-(2-h)*sqrt(4*h-h^2));

m(1) = 0;
m(2) = 4;

fprintf("%.6f<\n", fzero(f,2))

for i = 2:10
    m(i+1)= m(i) - ((m(i-1)-m(i)) * f(m(i)) )/ ( f(m(i-1)) - f(m(i)) );
    error(i) = abs(m(i+1)-m(i));
    fprintf("Root at: %.8f With Error of: %d\n", m(i+1), error(i));
end