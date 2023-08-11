clc
clear all
format long
syms x
f=@(x)sin(x^3-7*x^2+6*x+8);
Exect_res=subs(diff(f(x)),x,(1-sqrt(5))/2);%subs(f(x),x,1);
double(Exect_res)
h=0.1;
x=(1-sqrt(5))/2;
tol=1e-6;
maxit=30;
ok=false;
for i=1:maxit
    diffx(i)=(8*f(x+h)-8*f(x-h)+f(x-2*h)-f(x+2*h))/(12*h);
    err(i)=abs(diffx(i)-Exect_res);
    fprintf('For h = <strong>%.10f</strong> the error is = <strong>%.10f</strong>\n',h,err(i));
    h=h/10;
    if i>1 && abs (diffx(i)-diffx(i-1))<tol
        ok=true;
        break
    end
end
if ok
    fprintf('\nUltimate answer found!!! in %d th iteration\n',i)
else
    fprintf('\nUltimate answer not found!!!')
end
