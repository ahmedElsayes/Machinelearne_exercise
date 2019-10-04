
% deep learning for Cifar images classification ahmed.elsayes@tuni.fi

clc; close all;
clearvars -except te_data te_labels tr_data tr_labels

%% the main script
% building neural network
network = cifar_train(tr_data,tr_labels);

% predicting labels of the test samples
predict_label = cifar_test(te_data,network);

% comparinfg the predicted labels of the test samples with actual labels of
% the test samples
actual_label_dec = double(te_labels');
performance = cifar_10_evaluate(actual_label_dec,predict_label);

% confusion chart to verify the performance of classification
confusionchart(actual_label_dec,predict_label)
