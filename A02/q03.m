x(1) = 0.3;

for i=1:6
    x(i+1) = x(i) - (7*sin(x(i)) * exp(-x(i))-1)/(7*exp(-x(i))*(cos(x(i))-sin(x(i))));
    error(i) = abs(x(i+1)-x(i));
    fprintf("Root at: %.8f With Error of: %d\n", x(i+1), error(i))
end

