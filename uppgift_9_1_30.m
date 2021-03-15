%Show that {a_n} is increasing and has an upper bound, conclude that
%the sequence converges and find its limit.
%Let a_1 = 1 and a_n+1 = sqrt(1+2a_n) (n = 1,2,3,...)

i=1; %set startvalue of loop
a=0; %set startvalue of a
axis([0 5 0 16]) %set zoomlevel
hold on
while i < 15 %loop enough times so upper bound is visible
    a = sqrt(1+(a*2));
    plot(i,a, "r*") %set points in graph
    %fprintf("Loop %f: %f\n", i, a)
    i=i+0.1; %increase with each loop i 
end
hold off
xlabel('x-axis')
ylabel('y-axis')
title('Block 1 9.1.30')
fprintf("final value of a is %f\n", a)
%While the upper bound goes to 3, the value of y does not exceed 2.4142