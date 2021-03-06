%% I-U-Kennlinie
[U,R,I,P] = imp_av_dat('I-U-messung/01');
[max_P,ind_max_P] = max(P);
p = max_P
u = U(ind_max_P)
r = R(ind_max_P)
i = I(ind_max_P)
plot_(U,'Spannung in [V]',I,'Strom in [A]',P,'Leistung in [Ws]')
yyaxis left
rectangle('Position',[0 0 U(ind_max_P) I(ind_max_P)],'FaceColor',[0 1 0 0.5])
text(U+0.02,I,string(R))
exportgraphics(figure(1),'img/U-I-Linie.eps')
exportgraphics(figure(1),'img/U-I-Linie.png')

%% Langzeitmessung
[U,R,~,~,T] = imp_dat('langzeitmessung','07.12.21.11:58-13:58.csv',500);
I = U/1000;
P = U.*I;
plot_(T,'Zeit in [s]',U,'U in [V]',P,'Leistung in [Ws]');
yyaxis left
ylim([0 inf]);
yyaxis right
ylim([0 inf])
trapz(T,P)
exportgraphics(figure(1),'img/Langzeitmessung.eps')
exportgraphics(figure(1),'img/Langzeitmessung.png')

%% Kondensator Laden und Entladen
[U,~,~,~,T] = imp_dat('kondensator_laden','kond_lad_entlad01.csv');
I = 220*U/1000./T;
P = U.*I;
[max_U, ind_max_U] = max(U);

%plot_(T,'Zeit in [s]',U,'Spannung in [V]',P,'Leistung in [W]');
plot_(T,'Zeit in [s]',U,'Spannung in [V]',I,'Strom in [A]');
%trapz(T(1:ind_max_U),P(ind_max_U))
%trapz(T(ind_max_U+1:end),P(ind_max_U+1:end))
T;
P;
trapz(T,P);
exportgraphics(figure(1),'img/Kond_laden.eps')
exportgraphics(figure(1),'img/Kond_laden.png')

%% Kondensator Leistung
[U,~,~,~,T] = imp_dat('fahrplanmessung','kondensator.csv');
I = 220*U/1000./T;
P = U.*I;
plot_(T,'Zeit in [s]',U,'Spannung in [V]',P,'Leistung am Kondensator [Ws]')
exportgraphics(figure(1),'img/Kond_laden.eps')
exportgraphics(figure(1),'img/Kond_laden.png')