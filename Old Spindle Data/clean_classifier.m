function [clean_sleep] = clean_classifier(sleep)
% this program fills in the gaps from the initial spindle classification
[length, width] = size(sleep)

for ii = [2:(length-1)]
    if (sleep(ii-1, end) == sleep(ii+1,end)) && (sleep(ii,end) ~= sleep(ii+1, end) && sleep(ii,end) ~= sleep(ii-1, end))
        sleep(ii,end) = 1;
    end
end

clean_sleep = sleep;