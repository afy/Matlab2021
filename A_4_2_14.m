% cosx = x^2  => x^2 - cosx = 0 
f = @(x) x^2 - cos(x);

% find derivative of f
fp = @(x) 2 + sin(x); 

% plot out cos x and x^2, analyze for a suggested solution
% when both graphs meet (x^2=cosx) we see a value of ~0.8
hold on
fplot(@(x) x.^2)
fplot(@(x) cos(x))
hold off

% solve through newton-raphson; repeat this function
nr = @(x0) x0 - (f(x0) ./ (fp(x0)));  
x0 = 0.8;
for i = 1:5
    x0 = nr(x0);
    %fprintf("%f\n", x0)
end

fprintf("After 5 iterations we get the result %f\n", x0)

% we can also note that the function will have another zero-value at x=-x0

% style 
axis([-2 2 -2 10])
legend("x^2", "cosx")
title("Block A: P5.18")
line(xlim, [0, 0])
line([0, 0], ylim)
ylabel("y-axis")
xlabel("x-axis")