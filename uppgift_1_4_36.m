title('Block 2 1.4.36') %title
xlabel('x-axis')  %describe axis
ylabel('y-axis')
axis([-6 6 -4 4]) %zoom factor of graph

hold on

f = @(x) ((sin(x)./(6+x)));  %initial function
g = @(x) -(f(x));               %inverse
minb = fminbnd(f, -pi, pi);    %values of x,y + set minimum
maxb = fminbnd(g, -pi, pi);    %values of x,y + set maximum
plot(minb, f(minb), 'r*')      %set red star to min
plot(maxb, f(maxb), 'r*')      %same but max
fplot(f,[-pi,pi]);             %draw the curve


hold off