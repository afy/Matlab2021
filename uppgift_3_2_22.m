% x^sqrt(2) = 3  =>  sqrt(2)*log_10*x = log_10 * 3 
% => x = 10^(log_10*3 / sqrt*2)
x = 10.^(log10(3)./sqrt(2));
fprintf('Value is %d', x)
%prints answer: x = 2.174581
