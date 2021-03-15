% functions
f1 = @(x) 2*x;          % start; no change
f2 = @(x) f1(x) - 1;    % shift graph done 1 unit on y-axis
f3 = @(x) 1 - f1(x);    % invert f2
f4 = @(x) sqrt(f3(x));  % change shape and domain
f5 = @(x) 1 ./ (f4(x));    % change shape of function
f6 = @(x) f5(x) - 1;    % shift f5 down

% plot functions
hold on
fplot(f1, "r") 
fplot(f2, "y") 
fplot(f3, "g")
fplot(f4, "c") 
fplot(f5, "b") 
fplot(f6, "m")
hold off

% style 
legend("2*x", "f1(x) - 1", "", "sqrt(f3(x))", "1 / f4(x)", "f5(x) - 1")
title("Block A: P5.18")
line(xlim, [0, 0])
line([0, 0], ylim)
ylabel("y-axis")
xlabel("x-axis")

