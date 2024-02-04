data flags;
infile '\\files.unr.edu\users\hsalmanitehrani\Desktop\flags.dat';
input bidID call lberatio pcttraf numbids;

proc logistic descend;
model call = lberatio pcttraf numbids/ctable pprop=0.3 to 0.7 by 0.1;

output out=results;
run;
