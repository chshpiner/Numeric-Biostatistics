%Home work part A:
disp('part A:')
%section B:
TRANS= [.93 .07; .12 .88;];
EMIS = [.25,.25,.25,.25;0.22, 0.25, 0.32, 0.21];
[seq,states] = hmmgenerate(500,TRANS,EMIS);
%section C:
likelystates = hmmviterbi(seq, TRANS, EMIS);
%comparison to the original statrs:
if(states==likelystates)
    disp('states is like likelystates')
else
    disp('states is not like likelystates')
end
%calculate: thecorrectness of the algorithm?
ev = sum(states==likelystates)/500;
%section D:
%([TRANS_EST, EMIS_EST] = hmmestimate(seq, states);)
gTRANS= [.5 .5; .5 .5;];%A uniform distribution of TRANS
gEMIS = [0.25, 0.25, 0.25, 0.25;.25,.25,.25,.25];%A uniform distribution of EMIS
[TRANS_EST1, EMIS_EST1] = hmmtrain(seq, gTRANS, gEMIS);
%comparison to the original matrices:
if(isequal(TRANS_EST1,TRANS)&&ISEQUAL(EMIS,EMIS_EST1))
    disp('The matrices are identical')
else
    disp('The matrices are not identical')
end
%SECTION E:
s = fopen('gene.txt');
seq1 = fread(s);
str = [65, 67, 71, 84];
k=1;
for i=1:length(seq1)
    for j=1:4 
        if seq1(i)==str(j)
           k = k+1;
        end
    end
end
matrix=zeros(1,k-1);
z = 1;
for a=1:length(seq1)
    for b=1:4 
        if seq1(a)==str(b)
           matrix(1,z)=b;
           z = z+1;
        end
    end
end
likelystates = hmmviterbi(matrix, TRANS, EMIS);

%Home work part B:
disp('part B:')
%A=1 and B=2
statesAB=[1,1,1,2,2,1,2,1,2,2,2,2,2];
seqAB=[1,0,1,0,0,0,1,1,1,0,1,0,1];
[TRANS_EST, EMIS_EST] = hmmestimate(seq, states);
disp('The chance is:')
disp('T=:')
disp(TRANS_EST)
disp('E=:')
disp(EMIS_EST)


