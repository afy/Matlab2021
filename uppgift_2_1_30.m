% plot function
hold on
grid on %draw grid
f = @(x) ((x.^2-1).^2).^(1./3);
fplot(f)
line ([-1 1],[1 1],'color','r') %draw tangent from x=-1 to x=1 on y=1
hold off

% style
title('Block B: 2.1.30') 
legend("((x^2-1)^2)^(1/3)", "horizontal tangent at [0, 1]")
xlabel('x-axis')
ylabel('y-axis')
axis([-4 4 -2 6]) %zoom factor
line ([0 0], ylim); %draw x-axis
line (xlim, [0 0]); %draw y-axis