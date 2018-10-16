clear;
close all;
clc;

disp('h                   g(h)                                     e                                     Îó²î'); 
for i=0:-1:-15
    h=10^i;
    df=(exp(1+h)-exp(1))/h;
    err=exp(1)-df;
    disp(sprintf('%.0e     %16.14f     %16.14f    %.2e', h, df, exp(1),err));
end;
