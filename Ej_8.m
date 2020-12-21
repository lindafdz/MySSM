%Ejercicio 8: Filtro pasa bajas
clc
clear all
close all
syms s
C=5e-6;
R=400;
Wc=500;
Fc=Wc*(1/(2*pi))
Num=[1];
Den=[R*C 1];
Sys=tf(Num,Den)
roots(Den)
Func=Step(Sys);
bode(Sys)
plot (Fc)
