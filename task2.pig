A = LOAD '$Input' USING PigStorage(',') ;
B = filter A by ($11 == 'S' and  $1 == 1 );
C = group B by $2 ;
D = foreach C generate group , COUNT(B.$0);
dump D;