clc
clear all
close all
ar=[10 3 1 19;3 10 2 29;1 2 10 35];
for i=1:2
    for j=i:2
       ar(j+1,:)=ar(j+1,:)-ar(i,:)*(ar(j+1,i)/ar(i,i));
    end
end
ar
x=zeros(3,1);
y=zeros(3,1);
for i=1:3
    x(i)=ar(i,i);
end
x
y(3)=ar(3,4)/ar(3,3);
for i=3:-1:1
    y(i)=ar(i,4);
    for j=i+1:3
        y(i)=y(i)-ar(i,j)*y(j);
    end
    y(i)=y(i)/x(i);
end
y



