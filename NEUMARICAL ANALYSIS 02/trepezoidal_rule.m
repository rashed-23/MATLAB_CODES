clc;
clear all;
x=[0.00 .25 .50 .75 1.00];
y=[1.00 .9896 .9589 .9089 .8415];
l=length(x);
y=y.^2
h=x(2)-x(1);
sum_mid=0;
for i=2:l-1
    sum_mid=sum_mid+y(i);
end
Tarea=pi*h/2*(y(1)+2*sum_mid+y(l))


