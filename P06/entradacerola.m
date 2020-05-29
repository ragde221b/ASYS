function [y,dy,ddy]=entradacerola(a,b,ciy,xi,t0,nf)
A=a;
B=b;
Ciy=ciy;
T0=t0;
syms t;
Xi=0*xi;
Nf=nf;
[y,dy,ddy]=laplace20(A,B,Ciy,Xi,T0,Nf);
end