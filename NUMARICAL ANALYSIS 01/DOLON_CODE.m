clc;
clear all;
h=5;
x0=15;
x=input('please enter a value:');t=sind(x);
p = (x-15)/5;y=[0.2588190 0.34201 0.4226183 0.5 0.5735764 0.6427876 0 0 0 ];
for n=1:6   
    dy(n)=y(n+1)-y(n);   
end
for n=1:4
    d2y(n)= dy(n+1)-dy(n);
end
for n=1:3    
    d3y(n)= d2y(n+1)-d2y(n);
end
for n=1:2
    d4y(n)= d3y(n+1)-d3y(n);
end
for n=1:1    
    d5y(n)= d4y(n+1)-d4y(n);
end
d5y
yn= @(x) y(1)+ p*dy(1)+p*(p-1)*d2y(1)/2+p*(p-1)*(p-2)*d3y(1)/6+p*(p-1)*(p-2)*(p-3)*d4y(1)/24+p*(p-1)*(p-2)*(p-3)*(p-4)*d5y(1)/120;
q=yn(x);
disp(['value obtained by interpolation method is ', num2str(q),' \n and original value is ', num2str(t)]);