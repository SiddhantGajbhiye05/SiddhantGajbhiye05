% Function that takes in the three coefficients of the quadratic equation
% and calculates the roots for the equation (both real and imaginary roots)
% the value the coefficients is entered by user in order ax^2 + bx + c.

% step 1: taking input from user(i.e.coefficients in order a , b, c)
function my_quadratic
a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');
D = b^2-4*a*c;% discriminant of polynomial
% step 2: different cases for discriminant of polynomial
if D<0    % for imaginary roots
    r1 = (-b+sqrt(D))/(2*a);% calculates roots
    r2 = (-b-sqrt(D))/(2*a);
    x = real(r1);% real and imaginary parts of root 1
    y = imag(r1);
    x1 = real(r2);% real and imaginary part of root 2
    x2 = imag(r2);
    fprintf('The first imaginary root of the equation is: %.3f + (%.3f)*i\n', x , y)
    fprintf('The second imaginary root of the equation is: %.3f + (%.3f)*i', x1 , x2)
elseif D == 0 % for single root
    root = (-b/2*a);
    fprintf('\nThe equation has one root,\n')
    fprintf(' %.3f\n\n',root)
    
else         % for real roots
    r1 = (-b+sqrt(D))/(2*a);
    r2 = (-b-sqrt(D))/(2*a);
    fprintf('\nThe equation has two real roots,\n')
    fprintf(' %.3f and %.3f\n\n',r1,r2)
end
