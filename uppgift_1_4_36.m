% plot graph
hold on
f = @(x) ((sin(x)./(6+x)));    %initial function
g = @(x) -(f(x));              %flip graph
minb = fminbnd(f, -pi, pi);    %values of x,y + set minimum
maxb = fminbnd(g, -pi, pi);    %values of x,y + set maximum
plot(minb, f(minb), 'r*')      %set red star to min
plot(maxb, f(maxb), 'r*')      %same but max
fplot(f,[-pi,pi]);             %draw the curve
hold off

% print points
fprintf("min: [%f, %f]\n", minb, f(minb))
fprintf("max: [%f, %f]\n", maxb, f(maxb))

% style
axis([-6 6 -4 4])
title('Block B: 1.4.36')
legend("Minimum value", "Maximum value", "((sin(x)./(6+x)))5")
xlabel('x-axis') 
ylabel('y-axis') 