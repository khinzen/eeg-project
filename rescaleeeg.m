function [rescaled] = rescaleeeg(input)

[length, width] = size(input)
rescaled = zeros(length, width)

for ii = [1:width]
    column = rescale(input(:,ii), -1, 1);
    rescaled(:,ii) = column;
end


end