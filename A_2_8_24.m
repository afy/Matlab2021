format long % 6 decimal places

% plot function
f = @(x) (2*x+1) ./ ((x.^2) + x + 1);
g = @(x) -(f(x)); % inverse f
fplot(f)
grid on
axis([-14 14 -2 2]) % assuming trend continues, critical points ( f'(x)=0 )
% should all be in the open interval (-14, 14)

% calculate critical points
% function has a minimum and a maximum value, the 2 critical points
bnd = 14;
fmin = fminbnd(f, -bnd, bnd);
fmax = fminbnd(g, -bnd, bnd);
fprintf("Min: [%f, %f]\n", fmin, f(fmin))
fprintf("Max: [%f, %f]\n", fmax, f(fmax))

% mark out critical points
hold on
plot(fmin, f(fmin), 'r*')
plot(fmax, f(fmax), 'r*')
hold off

% style
title("Block B: 2.8.24")
legend("(2*x+1) / ((x.^2) + x + 1)", "min", "max")
xlabel("x-axis")
ylabel("y-axis")