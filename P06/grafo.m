function grafo(imp,en0,es0,rt,te,t0,xi)
t=0:0.01:t0;
figure(100);
hfig=figure(100);
set(hfig, 'Position', [0 0 900 900])

subplot(3,2,1)
Xi=dirac(t);
fplot(Xi,[0, t0],'b','LineWidth',2)

hold on
fplot(imp,[0,t0],'r','LineWidth',2)

legend('Entrada dirac(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema al impulso','FontWeight','bold','FontSize',14)
grid on

subplot(3,2,2)
Xi=xi*0;
fplot(Xi,[0, t0],'b','LineWidth',2)

hold on
fplot(en0,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)=0','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta a entrada cero','FontWeight','bold','FontSize',14)
grid on

subplot(3,2,3)
fplot(xi,[0, t0],'b','LineWidth',2)

hold on
fplot(es0,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema al impulso','FontWeight','bold','FontSize',14)
grid on

subplot(3,2,4)
fplot(xi,[0, t0],'b','LineWidth',2)

hold on
fplot(rt,[0,t0],'r','LineWidth',2)

legend('Entrada dirac(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema','FontWeight','bold','FontSize',14)
grid on

subplot(3,2,5)
Xi=heaviside(t);
fplot(Xi,[0, t0],'b','LineWidth',2)

hold on
fplot(te,[0,t0],'r','LineWidth',2)

legend('Entrada dirac(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema','FontWeight','bold','FontSize',14)
grid on

end