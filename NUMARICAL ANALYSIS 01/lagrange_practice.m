clc;
clear all;
x=[300 304 305 307];
y=[2.4771 2.4829 2.4843 2.4871];
n=length(x);
x0=input('<strong>Enter the value of x: </strong>');
answer=0;
for i=1:n
    l=1;
    h=1;
    for j=1:n
        if i~=j
            l=l*(x0-x(j));
            h=h*(x(i)-x(j));
        end
    end
    answer=answer+l/h*y(i);
end
fprintf('The actual value is = <strong> %.5f</strong>\n',log10(x0))
fprintf('We got the value is = <strong> %.5f</strong>\n',answer)


        

