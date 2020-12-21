syms R1 R2 R3 R4 L C
syms S I1 I2 I3 I4 I5 I6 Ve
%INCISO A
ec1 = -Ve+R1*I1+R2*I2==0;
ec2 = -R2*I2+L*S*I3+R3*I4==0;
ec3 = -R3*I4+R4*I5+(1/S*C)*I6==0;
ec4 = I1-I2-I3==0;
ec5 = I3-I4-I5==0;
ec6 = I5-I6==0;

Y = solve([ec1,ec2,ec3,ec4,ec5,ec6],[I1,I2,I3,I4,I5,I6]);
%Pretty(Y.I6) para acceder a la variable 

VC = Y.I6*(1/S*C);
FT_Ve_VC= VC/Ve;
%Pretty(FT_Ve_VC)

%INCISO B
A=[(C*(R3^2)/(L*C*(R3+R4)))-((R2^2)/(L*(R1+R2)))-(R3/L)  -(C*R3)/(L*C*(R3+R4));R3/(C*(R3+R4))  -1/(C*(R3+R4))];
b=[(R2^2)/(L*R1*(R1+R2)) 0]';
c=[0 1];
d=0;
sys=ss(A,b,c,d);
step(sys)
syms S
ft1=simplfy(C*inv(s*eye(2)-A)*b);
[n,d]=ss2tf(A,b,C,d)
ft2=tf(n,d)
impulse(sys)
Pretty(ft1)