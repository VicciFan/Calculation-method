% Runge's Phenomenon
% The function
f = @( x ) ones( size(x) ) ./ ( 1 + 25 * x .^ 2 ) ;

% Plotting Parameters
xx = -1 :.001:1 ;

figure
hold on ;
plot( xx, f( xx ), 'k-' ) ;

% polinomial interpolation
n = 2 * [ 2, 4, 6 ] + 1 ;
linsty = { '--', '-.', ':' } ;
for i = 1 : 3
    x = linspace( -1, 1, n( i ) ) ;
    y = f(x) ;
    [ p, s ] = polyfit( x, y, n(i) - 1 ) ;
    plot( xx, polyval( p, xx, s ), strcat( 'k', linsty{ i } ) ) ;
end

legend( 'f(x)', 'n = 4', 'n = 8', 'n = 12', 'Location', 'South' ) ;
axis( [ -1, 1, -1, 1 ]) ;