% Block B: D.1.31

% array of number 1,2,3,...,30
arr = 0:29;

% Solution 1
% create a list of twos with equal length to arr and for each element 
% raise to opposing element in arr
arr2 = 2.*ones([1, 30]);
arr = arr2.^arr;

% Solution 2
% loop through and change each number to the power of two for that index
% (double each iteration)
%for i = 1:30
%   arr(i) = 2^(i-1);
%end

% Solution 3
% same as solution 1 but with a slick one-liner
% note: initial arr needs to be commented out
%arr = (2.*ones([1, 30])).^(0:29);

% add all list values togheter and print 
s = sum(arr);
fprintf("Final value is %i", s)


