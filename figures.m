function [] = figures(input)

% boxplot and scatter to examine diff between eyes open and closed
label1 = find(input(:,2) == 1);
label0 = find(input(:,2) == 0);

fig = figure;
subplot(1,2,1);
boxplot(input(:,1), input(:, 2));
xlabel('0 = Eyes Closed - 1 = Eyes Open');   	            % x label
ylabel('Amplitude');   	            % y label
title('Difference in Amplitude Between EEGs');     % title

subplot(1,2,2);
scatter(input(label1, 1), input(label1, 2), 'blue')
hold on
scatter(input(label0, 1), input(label0, 2), 'red')

xlabel('Amplitude');   	            % x label
ylabel('Eyes Open = 1');   	            % y label
title('Determining Logistic Regression');     % title

disp(fig)

% run t-test to reject null hypothesis that means are equal
ttest2(final_ampent(label0, 1), final_ampent(label1, 1))

% produce logistic regression model
fitmnr(input(:,1), input(:, 2))
