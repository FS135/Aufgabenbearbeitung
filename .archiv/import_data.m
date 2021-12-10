function data = import_data(folder)
    U = [];
    R = [];
    I = [];
    P = [];
    %expression = '[1234567890].[1234567890]e3.csv';
    files = {dir([folder '/*.csv']).name};
    %filenames = arrayfun(@(x) dir([num2str(x) '.' num2str(x) 'e' num2str(x) '.csv']), 0:9)
    %files = fullfile(folder,'*.csv')
    %files = dir '*.csv'
    %regexp(,expression,'match')
    for n=files
        filename = char([folder '/' char(n)]);
        A = readtable(filename,'ReadRowNames',false);
        u = 2 * mean(A{:,2});
        %U = varfun(@mean,A(:,"Kanal_4"))
        %expression = '/*[.csv]';
        %regexp(filename,expression)
        %r = str2double(filename(11:15));
        x = char(n);
        r = str2double(x(1:end-4));
        %regexp(filename,'[1234567890].[1234567890]e3.csv','match')
        i = u/r;
        p = u*i;
        U = [U u];
        R = [R r];
        I = [I i];
        P = [P p];
    end
    data = table(U,R,I,P);
end