syms x;

f = @(x) x^3 - 2*x + 1;
g = @(x) 3*x^2 - 2;

x0 = 2;
iteration = 0;
tolerance = (10^(-6));
potRoot = 100000;

fprintf("The function being exaluated: f(x) = %s\n", f(x));
fprintf("The derivative of f(x): f'(x) = %s\n", g(x));
fprintf("The allowed error: %f\n", tolerance);
fprintf("Initial guess: %f\n\n", x0);


fprintf("CHART\n");
fprintf("i |    x0    |    x1    |   f(x0)  |  f'(x0)  | (x1 - x0)/x1\n");

while (potRoot > tolerance)
    iteration = iteration + 1;
    x1 = x0 - (f(x0)/g(x0));
    
    potRoot = abs((x1 - x0) / x1);
    
    fprintf("%d | %f | %f | %f | %f | %f\n", iteration, x0, x1, f(x0), g(x0), potRoot);
    
    x0=x1;
end

fprintf("\nThe root for tolerance %s is: %f\n", tolerance, x0);
fprintf("The number of iterations is %d\n", iteration); 

clearvars