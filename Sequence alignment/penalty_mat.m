%penalty matrix initialization
request1='Please enter the first sequence';
seq1 = input(request1,'s');
request2='Please enter the second sequence';
seq2 = input(request2,'s');
request='Please choose the penalty(match;mismatch;gap)';
x = input(request,'s');
penalty = str2num(x);



row=length(seq1)+1;
column=length(seq2)+1;
matrix=zeros([row column]);
for i=0:column
    matrix(1,i+1)=penalty(3)*i;
end;
for j=0:row
    matrix(j+1,1)=penalty(3)*j; 
end;
for i=1:row
    for j=1:column
    end;
   
end;





