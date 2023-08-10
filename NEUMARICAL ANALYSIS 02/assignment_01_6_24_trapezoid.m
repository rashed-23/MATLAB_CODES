%integretion by trapeziod role
clc 
clear all
f=@(x) 1./((sqrt(x).*sqrt(1-x)));
exact=integral(f,0,.5);
% let sqrt(x)=u then we get a new function
f=@(u) 2*(1./sqrt(1-u.^2));
%now new intervals are
up=1/sqrt(2);
low=0;
n=10; %Let divide into 10 sections
h=(up-low)/n;
x=[0:h:up];
y=[f(x)];
sum_mid=sum(y(2:n));
I=h/2*(y(1)+2*sum_mid+y(n+1));
fprintf('The trapezoidal role value is = <strong>%f</strong>\n',I);
fprintf('The Exact value is = <strong>%f</strong>\n',exact);
fprintf('The Actual Error is = <strong>%f</strong>\n',abs(exact-I));
