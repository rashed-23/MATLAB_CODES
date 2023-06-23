clc;
clear all
syms B;
Vm=100*sqrt(2);
R=23;%REG 2020338023
L=27e-3;%REG 2020338027
w=377;
theta=atan((w*L)/R);%The value of theta in Radian
Z=sqrt(R^2+(w*L)^2);
T=L/R;
f(B)=(Vm/Z)*(sin(B-theta)+sin(theta)*exp(-B/(w*T)));%The main function
fp=diff(f);%Function after first derivative
x1=3; %initial assumption
x2=x1-(f(x1)/fp(x1));
i=1;
fprintf('The root x(%d) at %d th iteration is = %.3f\n',i,i,x2);
while abs(x2-x1)>0.0009 %tolarance up to 3 decimal point
    i=i+1;
    x1=x2;
    x2=x1-(f(x1)/fp(x1));
fprintf('The root x(%d) at %d th iteration is = %.3f\n',i,i,x2);
end
fprintf('\nThe approximate root is = %.3f\n',x2)
fplot(f)
xlim([-20 20])
ylim([-50 50])
grid on 