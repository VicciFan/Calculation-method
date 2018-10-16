function y=trunc(x,k)
fmtstr=sprintf('%%.%de',k-1);
numstr=sprintf(fmtstr,x);
y=str2num(numstr);
return;

