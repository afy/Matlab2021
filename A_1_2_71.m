format long % enable 4 decimal place precision

% plot 
f = @(x) (sin(sqrt(1-x))) ./ (sqrt(1-(x.^2))); % "sin" is radians by default
hold on
fplot(f);
plot(0.999, f(0.999), 'r*') % read x value from graph plot
hold off

% print result
fprintf("when x->1-  then y reaches %f", f(0.999))

% style
grid on
axis([-0.2 1.5 -0.2 1.5])
legend("(sin(sqrt(1-x))) ./ (sqrt(1-(x.^2)))", "approx. limit")
title("Block B: 1.2.71")
line(xlim, [0, 0])
line([0, 0], ylim)
xlabel("x-axis")
ylabel("y-label")