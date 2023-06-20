clc;
clear all;
f=@(x) x.^2.*exp(-x);
% low =input('Lower Limit : ');
% up =input('Upper Limit : ');
low=0;
up=4;
% n=input('Number of section: ')
n=4;
h=(up-low)/n
y=zeros(1,n+1);
for i=low:up
    y(i+1)=f(i);
end
sum1=sum(y(3:2:n));
sum2=sum(y(2:2:n));
tarea=h/3*(y(1)+4*sum2+2*sum1+y(n+1))
integral(f,0,4)
