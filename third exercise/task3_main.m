% Exercise 3  Task 3
% loading data 
% run cifar_10_read_data.m % load data
% inputs_str = inputdlg('enter your data','inputs',[1 40]);
% divisions_num = double(str2num(inputs_str{1}));
%%

divisions_num = [32 16 8 4];
num = zeros(4,1);
accuracy = zeros(4,1);
for ii = 1:length(divisions_num)
    num(ii) = 1024/(divisions_num(ii)^2);
    % part 1: feature extraction
    ff = cifar_10_features3(double(tr_data),num(ii));% row cotain mean and variance

    %part 2: bayes learn:
    [mu,coveriance,p]=cifar_learn3(ff,tr_labels,num(ii));

    % part3 bayes_classify
    c = zeros(size(te_labels));
    for i = 1:length(te_labels)
        x = te_data(i,:);   % first image in the test data 
        c(i) = cifar_10_b_classify3(x,mu,coveriance,p,num(ii));
    end
    accuracy(ii) = cifar_10_evaluate(c,double(te_labels));
    pause(3);
end

plot(divisions_num, accuracy)

