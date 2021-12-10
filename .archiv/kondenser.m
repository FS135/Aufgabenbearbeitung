%A = readtable('kondensator_laden/kondensator_finally.csv','ReadRowNames',false);
A = readtable('24b-messwerte/kond_lad_entlad01.csv','ReadRowNames',false);
%x = 10;
%y = 80;
%A.I = (A.Kanal_4*220/1000)./(A.Zeit)
%begin = 7;
U = A{16:end,2};
T = A{16:end,"Zeit"};
I = 220*U/1000./T;
%cf = fit(T,U,'exp2');
%U2 = I.*T*1000/220;
%[x,y] = max(I)
%I = A{:,"I"};
%plot(A{x:y,"Zeit"},A{x:y,"Kanal_4"})

figure(1),clf,hold on,grid on
plot(T,U,'b-','LineWidth',2)
options = optimset('Display','notify');
%plot(cf,T,U);

yyaxis right
plot(T,I,'r-','LineWidth',2)
exportgraphics(figure(1),'img/Kondensator_Laden_und_entladen.eps')