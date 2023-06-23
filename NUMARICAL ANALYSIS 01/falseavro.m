% calculating the value of A
A = 5;
% given function
f(x) =x^3+x^2+x+A; 
a = -2; 
b = -1; 
n = 30; 
e = 0.0009; 
is_found = 0; 
 for i = 1:n 
 c = ((a*f(b))-(b*f(a)))/(f(b)-f(a)); %false position method
 fprintf('Apprx Root(%d) = %.5f\n', i, c) 
 if (abs(c-b)<e || abs(c-a)<e) 
 is_found = 1; 
 break; 
 end
 if (f(a)*f(c)<0) 
 b = c; 
 else  
 a = c; 
 end
 end
 if(is_found == 0) 
 fprintf('Failed to calculate accurate root within %d iterations!', n); 
 elseif(is_found == 1) 
 fprintf('Root(correct to three decimal point) found. Root = %.5f', c); 
 end
