function null = plot_(V1,label1,V2,label2,V3,label3)
    linewidth = 2;
    labelfontsize = 24;
    labelfontweight = 'normal';
    %if nargin == 2
    figure(1),clf,hold on,grid on
    xlabel(label1,'FontSize',labelfontsize,'FontWeight',labelfontweight)
    ylabel(label2,'FontSize',labelfontsize,'FontWeight',labelfontweight)
    plot(V1,V2,'b-','LineWidth',linewidth)
    
    if nargin == 6
        yyaxis right
        ylabel(label3,'FontSize',labelfontsize,'FontWeight',labelfontweight)
        plot(V1,V3,'r-','LineWidth',linewidth)
    end
    set(gca,'FontSize',17)
    null = figure(1);
end