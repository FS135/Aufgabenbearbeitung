function [U,R,I,P,T] = imp_dat(folder,file,r)
    filename = char([folder '/' file]);
    A = readtable(filename,'ReadRowNames',false);
    U = 2 * A{:,2};
    if nargin==2
        R = str2double(file(1:end-4));
    else
        R = r;
    end
    I = U./R;
    P = U.*I;
    T = A.Zeit;
end