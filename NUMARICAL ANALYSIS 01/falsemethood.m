clc
clear all
sym x;
u=3;
v=7;
A=(u+v)/2;%Calculating the Value of A
f=@(x) x^3+x^2+x+A;
a=0;
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
it=1;
c = (a*f(b)-b*f(a))/(f(b)-f(a));
if(f(c)*f(b)<0)
    tol=abs(c-b);
    a=c;
else
    tol=abs(c-a);
    b=c;
end
fprintf('The value of the root for %d th iterations is = %.4f\n',it,c);
while it
c = (a*f(b)-b*f(a))/(f(b)-f(a));
if(f(c)<0)
    a=c;
else
    b=c;
end
it=it+1;
fprintf('The value of the root for (%d) th iterations is = %.4f\n',it,c);
 if(abs(a-c)<.0009||abs(b-c)<0.0009)
        break;
 end
end
fprintf('\nThe real root currect to 3 decimal point is = %.3f\n',c);


