A = LOAD '$Input' USING PigStorage(',') ;
B = group A by $2 ;
C = foreach B generate group , AVG(A.$9);
dump C;
