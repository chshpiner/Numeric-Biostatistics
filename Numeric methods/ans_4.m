clear;
clf;
k = [0.01;10];
span = [0 4*pi];
y0 = [1 0];
% k = 0.01
    [T,Y] = ode45(@(t,y)myfun4(t,y,k(1)),span,y0);
    figure(1);
    subplot(2,2,1);
    plot(T,Y(:,1),'r');
    title('k = 0.01, y(t)');
    subplot(2,2,2);
    plot(Y(:,1),Y(:,2),'g');
    title('k = 0.01, dydt(y)');
%k = 10
[T,Y] = ode45(@(t,y)myfun4(t,y,k(2)),span,y0);

    subplot(2,2,3);
    plot(T,Y(:,1),'r');
    title('k = 10, y(t)');
    subplot(2,2,4);
    plot(Y(:,1),Y(:,2),'g');
    title('k = 10, dydt(y)');
