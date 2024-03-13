function [sleep_result] = KrishanAnalysis(spindles, sleep)
% clean 
[length_spindle, width_spindle] = size(spindles);
[length_sleep, width_sleep] = size(sleep);
extra_column = zeros(length_sleep, 1);
sleep = [sleep extra_column];

counter = 0;
for ii = [1:length_spindle]
    spindle_val = spindles(ii,[3:4]);
    disp(ii);
    disp(counter);
    for jj = [1:length_sleep]  
        if spindle_val == sleep(jj, [3:4])
            sleep(jj, end) = 1;
            counter = counter + 1;
            break
        end
    end
end

sleep_result = sleep;

end