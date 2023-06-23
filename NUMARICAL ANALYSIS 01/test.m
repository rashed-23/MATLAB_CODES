clc
clear all
syms x;
f(x)=sin(x)-x/2;
d(x)=diff(f,1)
a=pi/2;
i=0;
c=a-(f(a)/d(a));
while abs(c-a)>0.001
    a=c;
    c=a-(f(a)/d(a));
    double(c)
end
fprintf('%f',c);