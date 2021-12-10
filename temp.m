[U,~,~,~,T] = imp_dat('kondensator_laden','kond_lad_entlad01.csv');
I = 220*U/1000./T;

[max_U, ind_max_U] = max(U);
%U = max_U-U
P = I.*U;
plot_(T,'Zeit in [s]',U,'Spannung in [V]',P,'Leistung in [W]');
%plot_(T,'Zeit in [s]',U,'Spannung in [V]',I,'Strom in [A]');
%trapz(T(1:ind_max_U),P(ind_max_U))
%trapz(T(ind_max_U+1:end),P(ind_max_U+1:end))
T;
P;
trapz(T,P);
exportgraphics(figure(1),'img/Kond_laden.eps')
exportgraphics(figure(1),'img/Kond_laden.png')