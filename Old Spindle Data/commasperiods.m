function [periods] = commasperiods(stringeeg)
% this function converts the formating of the matrices(imported as 
% string vectors) from having commas to start decimals to having periods

tmp_periods = strrep(stringeeg, ',', '.');
[length, width] = size(tmp_periods)

periods = zeros(length, width);

counter = 0;
for ii = [1:length]
    for jj = [2:width]
        periods(ii,jj) = str2num(tmp_periods(ii,jj));
        counter = counter+1
    end
end
        



end