function score=score_calculate(seq1,seq2,scores)%calculates the score of the matrix

%sets the matrix:
row=length(seq2)+1;
column=length(seq1)+1;
matrix=zeros([row column]);

%for the gaps:
for i=1:column
    matrix(1,i)=scores(3)*(i-1);
end
for j=1:row
    matrix(j,1)=scores(3)*(j-1); 
end
for i=2:row
    for j=2:column
        H=matrix(i,j-1)+scores(3);%for gap
        V=matrix(i-1,j)+scores(3);%for gap
        if seq1(j-1)==seq2(i-1)
            D=matrix(i-1,j-1)+scores(1);%for match
        else
            D=matrix(i-1,j-1)+scores(2);%for mismatch
        end
        maxi=max([H V D]);%chooses the maximum score between gap,match and mismatch.
        matrix(i,j)=maxi;
    end
end

score=matrix(row,column);%The score will be the value in the right bottom of the maatrix.
end
