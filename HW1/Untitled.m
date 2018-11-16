sym x;

f = @(x) (1/2) - sin(x) - cos(x);

e = 10 ^ -6;

x1 = -1;
x0 = 1;

f0 = f(x0);
f1 = f(x1);

while (abs(f1) > e)
    
    fprintf(" %f | %f | %f | %f \n", x0, x1, f0, f1);
    
    x2 = ((x0 * f1) - (x1 * f0)) / (f1 - f0);
    f2 = f(x2);
    
    f0 = f1;
    f1 = f2;
    
    x0 = x1;
    x1 = x2;
    
end

fprintf(" %f | %f | %f | %f \n", x0, x1, f1, f2);

fprintf("ROOT = %f\nValue at f1 = %f", x1, f1);

    