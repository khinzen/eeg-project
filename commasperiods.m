function [periods] = commasperiods(stringeeg)

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