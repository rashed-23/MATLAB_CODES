clc;
clear all;
x0=input('<strong>Enter The Angle: </strong>');% Taking the value of Angle
x = [15 20 25 30 35 40];%given the x values
l=length(x); % Calculate how many values are given
y=[0.2588190 0.3420201 0.4226183 .5 0.5735764 0.6427876];
h=x(2)-x(1);
p=(x0-x(l))/h;
ar=zeros(l,l);
for i=1:l % keeping the y values into array
    ar(i,1)=y(i);
end
for i=2:l % keeping the differences into a arry
    for j=1:(l-(i-1))
        ar(j,i)=ar(j+1,i-1)-ar(j,i-1);
    end
end
ar
answer = ar(l,1);
multi=1;
pmulti=1;
for i=2:l % the calculation of the backward series by loop
    pmulti=pmulti*(p+(i-2));
    multi=pmulti/factorial(i-1);
    temp=ar(l-(i-1),i)*multi;
    answer=answer+temp;
end
fprintf('<strong>The actual value is = %.6f\n</strong>',sind(x0));
fprintf('<strong>The backward method value is = %.6f\n</strong>',answer);
