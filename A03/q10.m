f = @(x,y)[-x^2+x-y+0.75; y+5*x*y-x^2];
jac = @(x,y) [-2*x+1 -1; 2*x-5*y -1-5*x];

a = fsolve(  @(x)[-x(1)^2+x(1)-x(2)+0.75; x(2)+5*x(1)*x(2)-x(1)^2], [1.2; 1.2] )

x0 = 1.2;
y0 = 1.2;
error = 100;
while error > 0.0001
    djac = jac(x0,y0);
    d0 = djac(1,2);
    d1 = djac(2,2);
    d2 = djac(1,1);
    d3 = djac(2,1);
    a = det(djac);
    i = f(x0,y0);
    i0=i(1);
    i1=i(2);
    wur = x0;
    x0 = x0 - (((i0*d1)+(i1*d0))/a);
    y0 = y0 - ((-(i1*d2)-(i0*d3))/a);
    error = abs(x0-wur)/x0;
end

x0
y0