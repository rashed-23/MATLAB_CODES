%CODE FOR FALSE POSITION METHOD
clear all
syms x;
u=2;
v=7;
A=(u+v)/2;%Calculating the Value of A
f(x)=x^3+x^2+x+A;
a=0;
it=1;% initialize the iteration
e = 0.0009;% initialize the iteration
%finding the value of intervals for minimum iteration/(s)
if(f(a)>0)
    while(f(a)>0)
        a=a-1;
    end
    b=a+1;
else 
    while(f(a)<0)
        a=a+1;
    end
    b=a;
    a=b-1;
end
 % the false position method 
 while it
 c = ((a*f(b))-(b*f(a)))/(f(b)-f(a));
 fprintf('The value of the root for %d th iterations is = %.3f\n',it,c);
 it=it+1;
 if (abs(c-b)<e || abs(c-a)<e) 
 break; 
 end
 if (f(a)*f(c)<0) 
 b = c; 
 else  
 a = c; 
 end
 end 
 fprintf('\nThe real root correct to 3 decimal point is = %.3f\n',c);
