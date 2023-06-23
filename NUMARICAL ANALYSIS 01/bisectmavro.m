% calculating the value of A
A =5; 
% given function
f = @(x) x^3+x^2+x+A; 
a = -1; 
b = -2; 
n = 30; 
e = 0.0009; 
is_found = 0; 
if (f(a)*f(b) < 0) 
 for i = 1:n 
 c=(a+b)/2; %bisection method
 fprintf('Apprx Root(%d) = %.5f\n', i, c); 
 if (abs(c-b)<e || abs(c-a)<e) 
 is_found = 1; 
 break; 
 end
 if (f(a)*f(c)<0) 
 b = c; 
 elseif (f(b)*f(c)<0) 
 a = c; 
 end
 end
 if(is_found == 0) 
 fprintf('Failed to calculate accurate root within %d iterations!', n); 
 elseif(is_found == 1) 
 fprintf('Root(correct to three decimal point) found. Root = %.5f', c); 
 end
else
 disp('No Roots between given intervals!'); 
end 
