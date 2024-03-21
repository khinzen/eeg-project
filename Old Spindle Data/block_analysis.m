function [split] = block_analysis(data)
% attempt to split data into blocks (unsucessful) 
% look instead at separate.m
split = [];
block = [];
number = 1;
x = size(data);

for ii = 1:x(1)
    if data(ii,end) == 1
        block = [block; [data(ii,4:9), number]];
    elseif data(ii,end) == 0 && data(ii-1,end) == 1
        number = number + 1;
        split = [split; mean(block); std(block); median(block)];
        block = [];
    end
end