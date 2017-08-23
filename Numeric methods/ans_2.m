w = 2*pi;
mat1=[];
er = 1e-10;
for i = 0:0.1:1
    y = fzero(@(x)myfun2(x,w),i);
    [a,b] = size(mat1);
    if a ==0
        mat1 = [mat1;y];
    else
        if mat1(a,:)~=y
            if abs(mat1(a,:)-y)>er
                mat1 = [mat1;y];
            end
        end
    end
end

w = pi/2;
mat2 = [];
for i = 0:0.1:1
    y2 = fzero(@(x)myfun2(x,w),i);
    [a,b] = size(mat2);
    if a ==0
        mat2 = [mat2;y2];
    else
        if mat2(a,:)~=y2
            if abs(mat2(a,:)-y2)>er
                mat2 = [mat2;y2];
            end
        end
    end
end
disp('The roots of the equation for w = 2pi:');
disp(mat1);
disp('The roots of the equation for w = pi/2:');
disp(mat2);


