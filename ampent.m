function [result] = ampent(input, open)

[length, width] = size(input);

result = zeros(1,2);

for ii = [1:200:(length-200)]

    block = input([ii, ii+200], 66);
    amp = max(block) - min(block);
    if open == 1
        result = [result; amp 1];
    else
        result = [result; amp 0];
    end
end

result = result([2:end], :);
