clc
clear all
format long
syms x
f=@(x)exp(x);
Exect_res=f(1);%subs(f(x),x,1);
h=0.1;
x=1;
for i=1:10
    diffx(i)=(f(x+h)-f(x-h))/(2*h);
    err(i)=abs(diffx(i)-Exect_res);
    fprintf('For h = <strong>%.10f</strong> the error is = <strong>%.10f</strong>\n',h,err(i));
    h=h/10;
end