clc;
clear all;
x=[0.00 .25 .50 .75 1.00];
y=[1.00 .9896 .9589 .9089 .8415];
l=length(x);
y=y.^2
h=x(2)-x(1);
sum1=0;
sum2=0;
for i=2:2:l-1
    sum2=sum2+y(i);
end
for i=3:2:l-1
    sum1=sum1+y(i);
end
Tarea=pi*h/3*(y(1)+2*sum1+4*sum2+y(l))