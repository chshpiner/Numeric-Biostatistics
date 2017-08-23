clear;
x = [0,0.2,0.5,0.9,1.1,1.4,1.7];
y = [0,-0.0064,-0.0625,-0.0729,0.1331,1.0976,3.4391];
mat1 = [];
er = 0.1;
for i =1:6
    a = polyfit(x,y,i-1);
    z = polyval(a,x);
    mat1 = [mat1;z];
    delta = abs(z-y);
    if all(delta<=er)
        disp(['the n is:',num2str(i-1)]);
        break;
    end
end
[a,b] = size(mat1);
clf;
for i = 1:a
    errorbar(x,y,delta);
    hold on;
    plot(x,mat1(a,:),'r','LineWidth', 1.5);
    hold off;
end