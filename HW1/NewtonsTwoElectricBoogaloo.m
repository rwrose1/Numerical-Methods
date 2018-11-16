syms x y;

%Setting up variables
syms f1(x, y)
f1(x, y) = x^2 + x*y^3;
syms f2(x, y)
f2(x, y) = 3*y*x^2 - y^3;

xn = [0.370908 0.153465]';

J = jacobian([f1, f2], [x, y]);
Jinv = inv(J(xn(1), xn(2)));

Fx = [f1 f2]';

xn = xn - Jinv * Fx(xn(1), xn(2));


fprintf("%f %f", xn(1), xn(2));