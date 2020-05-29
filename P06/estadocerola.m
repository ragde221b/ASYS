function [y,dy,ddy]=estadocerola(a,b,ciy,xi,t0,nf)
A=a;
B=b;
Ciy=0.*ciy;
T0=t0;
syms t;
Xi=xi;
Nf=nf;
[y,dy,ddy]=laplace20(A,B,Ciy,Xi,T0,Nf);
end