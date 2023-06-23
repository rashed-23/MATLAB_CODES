clc
clear all
syms x;
u=23;
v=27;
A=(u+v)/2;
f(x)=cos(A*x);
mf=f(pi/3);
a=pi/4;
for i=1:6
 fprintf('<strong>Data for order: %d\n</strong>',i);
T(x)=sym(taylor(f,x,a,'Order',i))
y=T(pi/3);
fprintf('The value of order %d is = %f\n',i,y)
er=abs(y-mf);
perr=(er/mf)*100;
fprintf('The value of error for order %d is = %f\n',i,er)
fprintf('The percentage of error for order %d is = %f\n\n',i,perr)
% subplot(3,2,i)
% fplot([T,f])
% xlim([-4 4])
% grid on
% title('Figure for order',i)
end