%CODE FOR BISECTION METHOD
syms x;
u=3;
v=7;
A=(u+v)/2;%Calculating the Value of A
f=@(x) x^3+x^2+x+A;
a=0;
it=1;% initialize the iteration
e = 0.0009;% initialize the tolerance
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
 % the bisecton method
 while it
 c = (a+b)/2;
 fprintf('The value of the root for %d th iterations is = %.3f\n',it,c);
 it=it+1;
 if (abs(c-b)<e || abs(c-a)<e)
 break;
 end
 if (f(c)>0)
 b = c;
 else
 a = c; 
 end
 end 
 fprintf('\nThe real root correct to 3 decimal point is = %.3f\n',c);
