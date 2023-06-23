clc;
syms B;
Vm=100*sqrt(2);
R=23;%REG 2020338023
L=27e-3;%REG 2020338027
w=377;
theta=atan((w*L)/R);% The value of theta in radian
Z=sqrt(R^2+(w*L)^2);
T=L/R;
f=@(B) (Vm/Z)*(sin(B-theta)+sin(theta)*exp(-B/(w*T)));% The main function
B=-asin(sin(theta)*exp(-B/(w*T)))+theta;
fprime=@(B) asin(-sin(theta)*exp(-B/(w*T)))+theta;
x1=3; %initial assumption
x2=fprime(x1);
i=1;
fprintf('The root x(%d) at %d th iteration is = %.3f\n',i,i,x2);
while abs(x2-x1)>0.0009
    i=i+1;
    x1=x2;
    x2=fprime(x1);
fprintf('The root x(%d) at %d th iteration is = %.3f\n',i,i,x2);
end
fprintf('\nThe approximate root is = %.3f\n',x2)

