clear;
mati = [];
min = 0;
for i = 0:0.1:20
    y = integral(@(x)myfun1(x),min,i);
    mati = [mati;y];
end;
clf;
plot(0:0.1:20,mati,'r', 'LineWidth', 1)
xlabel('t');
ylabel('F(t)');
