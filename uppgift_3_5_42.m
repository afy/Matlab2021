f = @(x) asin(cos(x));

% D asin(cos(x)) = 1/(sqrt(1-cos^2(x))) * (- sin(x))
fp = @(x) 1 ./ (sqrt(1-(cos(x).*cos(x)))) .* (-sin(x));

% plot function
hold on
grid on
fplot(f);
fplot(fp, 'r')
hold off

% since sin is continous on interval -1 to 1 and stays the same for
% all real numbers it stays continous for the whole real line

% derivate is undefined when sqrt(1-cos^2x) equals 0
% => when 1-cos^2x = 0
% => cos^2x = 1
% since cos^2x is just cosx * cosx, cosx needs to be 1 (1^2 = 1)
% cosx = 1 when n*pi, n is a positive integer

%style
title('Block C: 3.5.42')
legend("asin(cos(x))", "1 / (sqrt(1-(cos(x)*cos(x)))) * (-sin(x))")
xlabel("x-axis")
ylabel("y-axis")
axis([-10 10 -10 10])
line([0 0], ylim)
line(xlim, [0 0])
