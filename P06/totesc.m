function [y,dy,ddy]=totesc(a,b,ciy,t0,nf)
A=a;
B=b;
Ciy=ciy.*0;
T0=t0;
syms t;
Xi=heaviside(t);
Nf=nf;
[y,dy,ddy]=laplace20(A,B,Ciy,Xi,T0,Nf);
end