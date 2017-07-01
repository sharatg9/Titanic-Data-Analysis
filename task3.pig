Load_data = LOAD '$Input' USING PigStorage(',') ;
male_data = filter Load_data by ($4 == 'male' and $1 == 0) ;
female = filter Load_data by ($4 == 'Female' and $1 == 0 ) ;
A = group male_data by $2;
B = group female by $2 ;
count_male = Foreach A generate group , COUNT($1) ;
count_female = Foreach B generate group , COUNT($1);
Dump count_male;
Dump count_female ;

