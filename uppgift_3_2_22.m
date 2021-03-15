title('Block 3 3.2.22')
xlabel('x-axis')
ylabel('y-axis')
axis([-10 10 -2 4])
xL = xlim;
yL = ylim;
line ([0 0], yL); %draw x-axis
line (xL, [0 0]); %draw y-axis

hold on
grid on

x = 10.^((log10(3))./(sqrt(2)));
fplot(x)
fprintf('%d', x)
%prints answer: x = 2.174581
plot(x, 'r*')

hold off
