%This script finds the p value of the Sequences' alignment
request1='Please enter the first sequence:';
seq1 = input(request1,'s');
request2='Please enter the second sequence:';
seq2 = input(request2,'s');
request='Please choose the scores(match;mismatch;gap):';
x = input(request,'s');
scores = str2num(x);




first_score=score_calculate(seq1,seq2,scores);%We want to find the p value of these squences.

sequences_scores={};
for t=1:100
random_seq=mixedString(seq2);%finds a random sequence.
score_rend=score_calculate(seq1,random_seq,scores);%find the score of the new matrix
sequences_scores=[sequences_scores,score_rend];%vector of all the scores

end

%find the p value:
count=0;
for i=sequences_scores
    j=cell2mat(i);
    if j>=first_score
        count=count+1;
    end
end

Pvalue=count/100;

disp('The p value is:');
disp(Pvalue);


            
            
   
        








