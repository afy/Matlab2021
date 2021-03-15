title('Block 2 2.1.30') %title
xlabel('x-axis') %x title
ylabel('y-axis') %y title
axis([-4 4 -2 6]) %zoom factor
xL = xlim;        %limit for lines, see next comment
yL = ylim;
line ([0 0], yL); %draw x-axis
line (xL, [0 0]); %draw y-axis
line ([-1 1],[1 1],'color','r') %draw tangent from x=-1 to x=1 on y=1

hold on
grid on %draw grid

f = @(x) ((x.^2-1).^2).^(1./3);
fplot(f)
%draw equation

hold off


