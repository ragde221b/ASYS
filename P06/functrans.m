function [y]=functrans(a,b,ciy)
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;
ciy=ciy.*0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end
mensaje('APLICAMOS TRANSFORMADA DE LAPLACE')

pretty(edd)
disp('=')
pretty(edi)

mensaje('DESPEJAMOS Y(s)')

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
disp('Y(s)=')
edd=solve(eq1, Yy);
pretty(simplify(edd))

mensaje('Sabiendo que Y(s)=X(s)H(s) y siendo H(s) la función de transferencia')
edd=edd/X(s);
mensaje('H(s)=')
pretty(simplify(edd))

mensaje('Aplicamos transformada inversa, asi la solución es')
disp('H(t)=')
y(t)=ilaplace(edd);
pretty(y(t))
end