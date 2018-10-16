function [ result ] = LagrInterp( data,data2,data3 )
%The LagrInterp to caculate the approximate values
%of f(x) at some given points by Lagrange intepolation method.
%data and data2 are the data points, data3 are some interpolation points.
%Function LagrInterp returns approximate values of f(x) at the
%interpolation points, Pn(x);
%For example, 
%           LagrInterp([1 2 4],[1 4 16],[3 5]) returns [9 25].

len = length(data);
if(len ~= length(data2))
    disp('The dimensions of x and f(x) are not the same!'); %Data check.
else
    x = sym('x');
    y = 0;
    for k = 1:len
    l = 1;
    for j = 1:k-1                                           %Construct the 
        l = l * ( x - data(j) ) / ( data(k) - data(j) );    %basic interpolation 
    end                                                     % functions.
    for j = k+1:len
        l = l * ( x - data(j) ) / ( data(k) - data(j) );
    end
    y  = y + l*data2(k);       %Construct the interpolation function,
    end
    result = double(subs(y,x,data3));       %Caculate approximate values at the given points
end

end

