clc
clear all
close all
syms S
Num=10;
Den=[1 10 2];
Sys=T_F(Num,Den);
roots(Den)
FuncionT=step(Sys);
subplot(2,1,1)
plot(FuncionT)
title('Sistema')
a=[0 1;-2 -10];
b=[0;10];
c=[1 0];
d=[0];
Ft=c*inv((s*eye(2)-A))*b;
pretty(Ft)
sys1=ss(a,b,c,d)
Var_E=step(sys1);
subplot(2,1,2)
plot(Var_E)
title('Sistema con variables de Estado')