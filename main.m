clear
%% getting data
data = import_data('messung01');
U = data{:,'U'};
R = data{:,'R'};
I = data{:,'I'};
P = data{:,'P'};
%[U,R,I,P] = data{:,:}
%cell = table2cell(data)
%array = table2array(data)
%struct = table2struct(data)
%timetable = table2timetable(data)
%[U,R,I,P] = deal(data)
[max_P,ind_max_P] = max(P);

%% plotting data
figure(1),clf,hold on,grid on
title('U-I Kennlinie an ...','FontSize',30)
xlabel('U in [V]', ...
    'FontSize',30, ...
    'FontWeight','bold')
ylabel('I in [A]', ...
    'FontSize',30, ...
    'FontWeight','bold', ...
    'Color','b')

rectangle('Position',[0 0 U(ind_max_P) I(ind_max_P)], ...
    'FaceColor',[0 1 0 0.5])
plot(U,I,'bo-', ...
    'MarkerFaceColor','b')


%text(U+0.02,I,string(R))

yyaxis right
ylabel('P in [Ws]', ...
    'FontSize',30, ...
    'FontWeight','bold')
plot(U,P,'ro-', ...
    'MarkerFaceColor','r')

