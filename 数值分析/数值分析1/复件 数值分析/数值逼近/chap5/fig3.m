clc;
clear;
close all;

figure
hold on
linsty = { '-', '--', '-.', ':' } ;
for i = 5 : 6
    x = 0 : 0.01 : i ;
    y = x ;
    for j = 1 : i
        y = y .* ( x - j ) ;
    end
    plot( x, y, strcat( 'k', linsty{ i - 4 } ) ) ;
end
axis( [0, 6, -100, 100] ) ;
legend( 'n = 5', 'n = 6', 'Location', 'SouthWest' ) ;

