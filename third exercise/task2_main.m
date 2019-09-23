% Exercise 3  Task 2
% loading data 
% run cifar_10_read_data.m % load data
%%
% part 1: feature extraction
ff = cifar_10_features(double(tr_data));% row cotain mean and variance
% clear f label loop x

%%
%part 2: bayes learn:
[mu,coveriance,p]=cifar_10_b_learn2(ff,tr_labels);

%% bayes_classify
c = zeros(size(te_labels));
for i = 1:length(te_labels)
    x = te_data(i,:);   % first image in the test data 
    c(i) = cifar_10_b_classify2(x,mu,coveriance,p);
end
accuracy = cifar_10_evaluate(c,double(te_labels));
