f =@(x) 7*sin(x) * exp(-x)-1;

m(1)=1;
m(2)=0;


for i = 2:10
    m(i+1)= m(i) - ((m(i-1)-m(i)) * f(m(i)) )/ ( f(m(i-1)) - f(m(i)) );
    error(i) = abs(m(i+1)-m(i));
    fprintf("Root at: %.8f With Error of: %d\n", m(i+1), error(i));
end