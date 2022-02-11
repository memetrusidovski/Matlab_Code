m=[2:0.5:20];

f = @(x) sin(x) + sin((2/3) * x);


plot(m, f(m))
xlabel("x")
ylabel("f(x)")

x1 = 2;
x2 = 20;

fprintf("Minimum: %.5f", fminbnd(f,15,20));