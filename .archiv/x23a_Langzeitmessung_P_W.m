[U,R,~,~,T] = imp_dat('23a-messungen','07.12.21.11:58-13:58.csv',500);
%[U,R,~,~,T] = imp_dat('23a-messungen','langzeitlog.csv',500);
%U = U(1:30,:);
%T = T(1:30,:);
%U2 = [0; U(1:end-1,:)];
I = U/1000;
P = U.*I;
%I = 0.22.*delta_U;
%P = delta_U.*I;
figure(1),clf,hold on,grid on
ylim([0 inf])
plot(T,U,'LineWidth',2);
%yyaxis right
%plot(T,P);
trapz(T,P)
exportgraphics(figure(1),'img/Langzeitmessung_Spannungskurve.eps')