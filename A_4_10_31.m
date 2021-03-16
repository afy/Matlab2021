format long

% maclaurin gives us the following formula for e^x as x->0:
% 1 + x + x^2/2! + x^3/3! + ... + x^n/n!
% since we want 1/e, we can see that e^-1 (x=1) gives 1(e), therefore:
%   x = 1
% we can also note that for e^-x the sign of the iteration will vary
Pn = @(n) ((-1)^n) * (1 / factorial(n)); 

% find iteration count n for a set precision
n = 1;
p = 1;
while p > 0.000005
   n = n + 1;
   p = 1/factorial(n+1);
end
fprintf("number of iterations is %d\n", n)

% use n to iterate over f 
% note that since for our function e^-x, Pn(x) = 1 - 1 + 1/2! - ...
% the first two terms equal 0, and the loop should start at 2
r = 0;
for i = 2:n+1
    r = r + Pn(i);
    %fprintf("%d: %f\n", i, r)
end
fprintf("Final value is %0.5f\n", r)