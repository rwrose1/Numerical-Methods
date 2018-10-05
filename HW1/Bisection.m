format long;

f(x) = 2 + cos(exp(x) - 2) - exp(x);

a = 0.05;
b = 1.5;
error = 10^(-3);

fprintf("Function to be evaluated: f(x) = %s\n", f(x));
fprintf("Starting a = %f\n", a);
fprintf("Starting b = %f\n", b);
fprintf("ERROR = %f\n", error);

fprintf("\n---va--- ---vb--- --Root--\n");

n = 1;

c = (a + b) / 2;

while ((b - c) >= error)
    
    if ((f(b) * f(c)) <= 0)
        
        a = c;
        
    else
        
        b = c;
        
    end
    
    c = (a + b) / 2;
    fprintf("%f %f %f\n", a, b, c);
    
end

fprintf("\nRoot = %f\n", c);

