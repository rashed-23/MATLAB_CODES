clc
clear all
syms x1 x2 x3 x4
a(x2,x3,x4)=.3+.2*x2+.1*x3+.1*x4;
b(x1,x3,x4)=1.5+.2*x1+.1*x3+.1*x4;
c(x1,x2,x4)=2.7+.1*x1+.1*x2+.2*x4;
d(x1,x2,x3)=-.9+.1*x1+.1*x2+.2*x3;
% let x1=m1=2
% x2=n1=3
% x3=o1=4
% x4=p1=5
m1=100;
n1=50;
o1=1000;
p1=500;
m2=double(a(n1,o1,p1));
n2=double(b(m1,o1,p1));
o2=double(c(m1,n1,p1));
p2=double(d(m1,n1,o1));
maxit=50;
iteration=1;
while(iteration)
    m1=m2;
    n1=n2;
    o1=o2;
    p1=p2;
    m2=double(a(n1,o1,p1));
    n2=double(b(m1,o1,p1));
    o2=double(c(m1,n1,p1));
    p2=double(d(m1,n1,o1));
    iteration=iteration+1;
    if iteration==maxit || abs(m2-m1)<.00009 ||abs(n2-n1)<.00009||abs(o2-o1)<.00009||abs(p2-p1)<.00009
        if abs(m2-m1)>.00009
            fprintf('iteration limit exceeded')
        end
        break;
    end

end
x1=m2;
x2=n2;
x3=o2;
x4=p2;
iteration
x1
x2
x3
x4

