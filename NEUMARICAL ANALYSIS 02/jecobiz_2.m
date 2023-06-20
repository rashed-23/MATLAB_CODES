clc
clear all
x1=2;x2=3;x3=4;x4=5;
temp1=x1;temp2=x2;temp3=x3;temp4=x4;
maxit=50;
for i=1:maxit
    iteration=i;
    x1=.3+.2*x2+.1*x3+.1*x4;
    x2=1.5+.2*x1+.1*x3+.1*x4;
    x3=2.7+.1*x1+.1*x2+.2*x4;
    x4=-.9+.1*x1+.1*x2+.2*x3;
    tol1=abs(temp1-x1);tol2=abs(temp2-x2);
    tol3=abs(temp3-x3);tol4=abs(temp4-x4);
    tol=min([tol1,tol4,tol3,tol2]);
    if tol<.00009
        break;
    end
    temp1=x1;temp2=x2;temp3=x3;temp4=x4;
end
fprintf('Iteration no: %d\nx1 = %.4f\nx2 = %.4f\nx3 = %.4f\nx4 = %.4f\n ',iteration,x1,x2,x3,x4);
