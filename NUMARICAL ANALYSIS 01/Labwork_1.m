clc;
clear all;
syms z;
x0=input('Enter The angle: ');
x = [15 20 25 30 35 40 45 50 55 60];
l=length(x);
f=@(z) sind(z);
y=[];
for i =1:l
y(i)=f(x(i));
end
p=(x0-x(1))/5;
ar=zeros(l,l);
for i=1:l
    ar(i,1)=y(i);
end
for i=2:l
    for j=i:l
        ar(j,i)=ar(j,i-1)-ar(j-1,i-1);
    end
end
answer = ar(1,1);
multi=1;
pmulti=1;
for i=2:l
    pmulti=pmulti*(p-(i-2));
    multi=pmulti/factorial(i-1);
    temp=ar(i,i)*multi;
    answer=answer+temp;
end
fprintf('<strong>The actual value is %.4f\n</strong>',f(x0));
fprintf('<strong>The method value is %.4f\n</strong>',answer);

    



