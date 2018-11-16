syms x;

f = @(x) 20*x^3 + 10.8*x^2 - 9.72*x - 2.916;
g = @(x) -9.72 + 21.6*x + 60*x^2;

x0 = -0.901219;
iteration = 0;
tolerance = (10^(-8));
potRoot = 100000;

theta = 0;
x1 = 0;
xn1 = 0;

fprintf("The function being exaluated: f(x) = %s\n", f(x));
fprintf("The derivative of f(x): f'(x) = %s\n", g(x));
fprintf("The allowed error: %f\n", tolerance);
fprintf("Initial guess: %f\n\n", x0);


fprintf("CHART\n");
fprintf("i |    x0    |    x1    |   f(x0)  |  f'(x0)  | (x1 - x0)/x1 | ratio |\n");

n = 0;

%Loop
while (potRoot > tolerance)
    iteration = iteration + 1 ;
    x1 = x0 -(f(x0)/g(x0));
    
    theta = (x1 - x0) / (x0 - xn1);
    
    potRoot = abs((x1 - x0) / x1);
    
    fprintf("%d | %f | %f | %f | %f | %f | %f\n", iteration, x0, x1, f(x0), g(x0), potRoot, theta);
    
    xn1 = x0;
    x0 = x1;
    
end

fprintf("\nThe root for tolerance %s is: %f\n", tolerance, x0);
fprintf("The number of iterations is %d\n", iteration); 

clearvars