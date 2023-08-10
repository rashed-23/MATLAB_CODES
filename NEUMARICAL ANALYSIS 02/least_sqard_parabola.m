clc
clear all
syms Y a b c X
x=[0 1 2 3 4 5 6];
y=[71 89 67 43 31 18 9];
m=length(x);
% Here the degree of the given equation is 2
% So we need the values of 
% sum of xi,x2i,x3i,x4i,,yi,xiyi,x2iyi to find a b c
xi=0;
x2i=0;
x3i=0;
x4i=0;
yi=0;
xiyi=0;
x2iyi=0;
for i=1:m
    xi=xi+x(i);
    x2i=x2i+x(i)^2;
    x3i=x3i+x(i)^3;
    x4i=x4i+x(i)^4;
    yi=yi+y(i);
    xiyi=xiyi+x(i)*y(i);
    x2iyi=x2iyi+x(i)^2*y(i);
end;
% Now the equations are 
eqn1=m*a+xi*b+x2i*c==yi;
eqn2=xi*a+x2i*b+x3i*c==xiyi;
eqn3=x2i*a+x3i*b+x4i*c==x2iyi; 
sol=solve([eqn1,eqn2,eqn3],[a,b,c]);
a=double(sol.a);
b=double(sol.b);
c=double(sol.c);
fprintf('The value of a = %f\n',a);
fprintf('The value of b = %f\n',b);
fprintf('The value of c = %f\n',c);
plot(x,y,'*')
hold on
Y(X)=a+b*X+c*X^2;
grid on
fplot(Y(X));
xlim([-10,10])