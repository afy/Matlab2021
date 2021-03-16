% x + y = 16 ; f = y^3 * x^5 
% => y = 16-x
% => f(x) = x^3 * (16-x)^5
f = @(x) x.^3 .* (16-x).^5;

% calculate f prime and decide maximum value
fp = @(x)  (x.^2)*((16-x).^4) * (48-(8*x)); % f prime; derivative of f
fpx = fzero(fp, 16/2); % start search at middle
fprintf("x: %d,  y: %d\n", fpx, f(fpx))

% plot function
hold on
fplot(f)
plot(fpx, f(fpx), 'r*')
hold off

% style
axis([-1 17 -2 100])
title("Block D: 4.8.4")
legend("a", "b")
xlabel("x-axis")
ylabel("y-axis")