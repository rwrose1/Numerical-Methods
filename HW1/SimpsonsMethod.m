sym x;

f = @(x) x^(5/2);
from = 0;
to = 1;
real = 2/7;

subdivisions = [2, 4, 8, 16, 32, 64, 128, 256];
%subdivisions = [2, 4];

for n = 1:8
    
    ni = subdivisions(n);
    
    fraction = (to - from) / ni;
    
    fprintf("Number of Sub Divisions = %d fraction = %f\n", ni, fraction);
    
    xn = 0;
    sum = 0;
    
    for index = 1:(ni + 1)
       
        if index == 1 || index == (ni + 1)
            sum = sum + f(xn);
        elseif mod(index, 2) == 0
            sum = sum + (4 * f(xn));
            %fprintf("\t\t\tEVEN\n");
        else 
            sum = sum + (2 * f(xn));
            %fprintf("\t\t\tEVEN\n");
        end
            
        xn = xn + fraction;
    end
    
    approximate = sum * (fraction / 3);
    
    fprintf("\tApproximate = %d\n\tError = %d\n\tRatio = %d\n", approximate, (approximate - real), (approximate / real));
    
end