%% to test on sub-section

% v3 = double(te_data(1:100,:));
% y3 = double(tr_data(15000:16500,:));
% z3 = double(tr_labels(15000:16500));
% test_label = cifar_10_1NN(v3,y3,z3);
% evaluation = cifar_10_evaluate(test_label,double(labels(1:length(test_label))));

%% to test on the whole data
test_label = cifar_10_1NN(double(te_data),double(tr_data),double(tr_labels));
%% to evaulate the tesults on comparison with the original tested data
evaluation = cifar_10_evaluate(test_label,double(labels));