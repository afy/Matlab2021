format long

% y = g^-1(x) <=> x = g(y):
% =>  g^-1(x) = y = where g(y) = 2
% y^-1' = 1 / g'(y)

% calculate g^-1(x)=2
g = @(y) 2*y + sin(y); % increases; one-to-one; invertable
% g(y) = 2 => g(y) - 2 = 0  =>  2y + siny - 2 = 0
g2 = @(x) g(x) - 2;
z = fzero(g2, 1);
fprintf("g^-1(x)=2 when y=%f\n", z)

% calculate derivative of g^-1(2)
% ... = 1/g'(y)
gp = @(y) 2 + cos(y); % derivative of g
dv = 1 / (gp(z));
fprintf("derivative at y=2 is %f\n", dv)
