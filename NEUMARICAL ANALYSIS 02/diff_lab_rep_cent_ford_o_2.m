clc
clear all
format long
syms x
f=@(x)sin(x^3-7*x^2+6*x+8);
Exect_res=subs(diff(f(x)),x,(1-sqrt(5))/2);%subs(f(x),x,1);
double(Exect_res)
h=0.1;
x=(1-sqrt(5))/2;
for i=1:10
    diffx(i)=(f(x+h)-f(x-h))/(2*h);
    err(i)=abs(diffx(i)-Exect_res);
    fprintf('For h = <strong>%.10f</strong> the error is = <strong>%.10f</strong>\n',h,err(i));
    h=h/10;
end