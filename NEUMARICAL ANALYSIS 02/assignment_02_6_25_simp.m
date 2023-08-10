%Simpson's Role
clc
clear all
f=@(x) 1./(1+x);
up=1;
low=0;
h=1/6;
n=6;
x=[0:h:1];
y=[f(x)];
sum_even=sum(y(2:2:n));
sum_odd=sum(y(3:2:n));
sum_3=0;
sum_2=0;
k=4;
for i=2:6
    if rem(i,k)
sum_3=sum_3+y(i);
    else
        sum_2=sum_2+y(i);
        k=k+3;
    end
end
% 1/3 rule
It=h/3*(y(1)+4*sum_even+2*sum_odd+y(n+1));
fprintf('The Simpson''s 1/3 role value is = <strong> %f </strong>\n',It);
%3/8 rule
Is=h*3/8*(y(1)+3*sum_3+2*sum_2+y(n+1));
fprintf('The Simpson''s 3/8 role value is = <strong>%f</strong>\n',Is);
%compare the values 
fprintf('The difference between 1/3 ans 3/8 role is = <strong>%f</strong>\n',abs(Is-It));
%Exact value
exact = integral(f,low,up);
fprintf('The Exact value is = <strong>%f</strong>\n',exact);