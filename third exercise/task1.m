% Exercise 3  Task 1
% loading data 
%%
% part 1: feature extraction
ff = cifar_10_features(double(tr_data));% row cotain mean and variance
% clear f label loop x

%%
%part 2: bayes learn:
[mu,sigma,p]=cifar_10_bayes_learn(ff,tr_labels);

%% bayes_classify
x = te_data(1,:);   % first image in the test data 
c = cifar_10_bayes_classify(x,mu,sigma,p);