f =@(x) log(x^2)-0.7;

m(1)=-2;
m(2)=-1;


for i = 2:7
    m(i+1)= m(i) - ((m(i-1)-m(i)) * f(m(i)) )/ ( f(m(i-1)) - f(m(i)) );
    error(i) = abs(m(i+1)-m(i));
    fprintf("Root at: %.8f With Error of: %d\n", m(i+1), error(i));
end