function [stats] = seperate(sleep)


% this program collects summary stats from spindle and non-spindle sleep

[length, width] = size(sleep)

start_indice = 1;
end_indice = 1

stats = zeros(1, 12);
block = []

for ii = [1:(length-1)]
    if sleep(ii, end) == sleep(ii+1, end)
        end_indice = end_indice + 1;
    else
        block = sleep([start_indice:end_indice], [5:9]);
        tmp_stats = [std(block,1), mean(block,1)];
        distance = (end_indice - start_indice);
        if sleep(start_indice,end) == 0
            stats = [stats; tmp_stats, 0, distance];
        else
            
            stats = [stats; tmp_stats, 1, distance];
        end
        start_indice = end_indice + 1;
        end_indice = start_indice;
    end
end

stats = stats([2:end],:)