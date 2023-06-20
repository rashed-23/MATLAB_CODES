clc;
close all;
T=[0 .3 .5 .6 .7 .8 .9 1];
Pout=[0 46.18 75.82 90.60 104.97 119.13 132.41 144.09];
eff=[0 57 70.2 73.6 79.5 82.7 83.3 85];
Pin=[60 81 108 123 132 144 159 183];
I=[.17 .19 .22 .24 .26 .27 .30 .34];
Nr=[1480 1470 1448 1442 1432 1422 1405 1376];
PF=[.54 .64 .73 .76 .77 .79 .81 .82];
S=[.013 .02 .034 .038 .045 .052 .063 .083];
subplot(3,2,1)
f=polyfit(T,Nr,2);
yfit=polyval(f,T)
plot(T,Nr,'*',T,yfit)
xlabel('T');
ylabel('Nr');
title('T vs Nr');
grid on;

subplot(3,2,2)
f=polyfit(T,Pout,1);
yfit=polyval(f,T);
plot(T,Pout,'*',T,yfit)
xlabel('T');
ylabel('Pout');
title('T vs Pout');
grid on;

subplot(3,2,3)
f=polyfit(eff,Pout,3);
yfit=polyval(f,eff);
plot(eff,Pout,'*',eff,yfit)
xlabel('η');
ylabel('Pout');
title('η vs Pout');,
grid on;

subplot(3,2,4)
f=polyfit(I,Pout,2);
yfit=polyval(f,I)
plot(I,Pout,'*',I,yfit)
xlabel('I');
ylabel('Pout');
title('I vs Pout');
grid on;

%{
subplot(3,3,5)
plot(T,Nr);
xlabel('T');
ylabel('Nr');
title('T vs Nr');
grid on;
%}

subplot(3,2,5)
f=polyfit(S,Pout,2);
yfit=polyval(f,S)
plot(S,Pout,'*',S,yfit)
xlabel('S');
ylabel('Pout');
title('S vs Pout');
grid on;

subplot(3,2,6)
f=polyfit(PF,Pout,2);
yfit=polyval(f,PF)
plot(PF,Pout,'*',PF,yfit)
xlabel('PF');
ylabel('Pout');
title('PF vs Pout');
grid on;
