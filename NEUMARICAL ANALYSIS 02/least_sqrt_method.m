clc
clear all
syms z
x=[1 2 3 4 5];
y=[0.6 2.4 3.5 4.8 5.7];
m=length(x);
avg_x=sum(x)/m;
avg_y=sum(y)/m;
sum_xiyi=0;
for i=1:m
    sum_xiyi=sum_xiyi+(x(i)*y(i));
end
sum_xi=sum(x);
sum_yi=sum(y);
sum_x_sqi=0;
for i=1:m
    sum_x_sqi=sum_x_sqi+x(i)^2;
end
a1=(m*sum_xiyi-sum_xi*sum_yi)/(m*sum_x_sqi-sum_xi^2)
a0=avg_y-a1*avg_x
plot(x,y,"*",Color='green');
xlim([0 6])
hold on
f(z)=a0+a1*z;
fplot(f(z));
