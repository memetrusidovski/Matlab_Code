m=[0:100:1200];

c = @(T) 0.99403 + 1.671 * 10 ^-4 .*T + 9.7215 *10^-8 .*T.^2 - 9.5838*10^-11 .*T.^3 + 1.952*10^-14 .*T.^4;



plot(m, c(m))
xlabel("T")
ylabel("c(t)")

x = 1100;

fprintf("Temperature corresponds to a specific heat of %d kJ/(kg K)\n", x);
fprintf("%.5f", c(x) );