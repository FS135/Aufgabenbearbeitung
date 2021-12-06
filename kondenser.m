A = readtable('kondensator_laden/kondensator_finally.csv','ReadRowNames',false);
%x = 10;
%y = 80;
%A.I = (A.Kanal_4*220/1000)./(A.Zeit)
%begin = 7;
U = A{16:end,"Kanal_4"};
T = A{16:end,"Zeit"};
I = 220*U/1000./T;
cf = fit(T,U,'exp2');
%U2 = I.*T*1000/220;
%[x,y] = max(I)
%I = A{:,"I"};
%plot(A{x:y,"Zeit"},A{x:y,"Kanal_4"})

figure(1),clf,hold on,grid on
%plot(T,U,'.','LineWidth',1)
options = optimset('Display','notify');
plot(cf,T,U);

yyaxis right
%plot(T,I,'LineWidth',3)