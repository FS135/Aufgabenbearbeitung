function [U,R,I,P] = imp_av_dat(folder)
    U = [];
    R = [];
    I = [];
    P = [];
    
    files = {dir([folder '/*.csv']).name};
    for n=files
        [u,r] = imp_dat(folder,char(n));
        u = mean(u);
        i = u/r;
        U = [U u];
        R = [R r];
        I = [I i];
        P = [P i*u];
    end
end