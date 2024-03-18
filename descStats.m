function [stats_ec] = descStats(input_set)

[length, width] = size(input_set)

stats_ec = zeros(1, ((width*2)+1));
counter = 0;
for ii = [1:256:(length-257)]
    block = input_set([ii:(ii+255)],:);
    row = [mean(block) std(block) 1]
    size(row)
    size(stats_ec)
    stats_ec = [stats_ec; row];
    counter = counter + 1
end
