syms R1 R2 R3 R4 L C
syms S I1 I2 I3 I4 I5 I6 Ve

ec1 = -Ve+R1*I1+R2*I2==0;
ec2 = -R2*I2+L*S*I3+R3*I4==0;
ec3 = -R3*I4+R4*I5+(1/S*C)*I6==0;
ec4 = I1-I2-I3==0;
ec5 = I3-I4-I5==0;
ec6 = I5-I6==0;

Y = solve([ec1,ec2,ec3,ec4,ec5,ec6],[I1,I2,I3,I4,I5,I6]);
pretty(Y.I6) %para acceder a la variable 

VC = Y.I6*(1/S*C);
FT_Ve_VC= VC/Ve;

pretty(FT_Ve_VC)