clc;
clear all;
% 10*x+3*y+z=19;
% 3*x+10*y+2*z=29;
% x+2*y+10*z=35;
x=0;
y=0;
z=0;
tol=0;
while tol<10
x=1.9-.1*z-.3*y;
y=(29-2*z-3*x)/10;
z=3.5-.2*y-.1*x;
    tol=tol+1;
end
x
y
z
