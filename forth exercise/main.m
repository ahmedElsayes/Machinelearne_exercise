%% deep learning for Cifar images classification ahmed.elsayes@tuni.fi

clc; close all;
clearvars -except te_data te_labels tr_data tr_labels
%% convert the indices of train labels to vectors

ind_train = double(tr_labels') + 1;
trained_labels = full(ind2vec(ind_train,10));
ind_data = double(te_labels') + 1;
actual_labels = full(ind2vec(ind_data,10));



%% The pattern recognition commands to clasifiy categories
% to extract the features of the training photos & data photos
% training photos
x = double(tr_data);
col1 = mean(x(:,1:1024),2);
col2 = mean(x(:,1025:2048),2);
col3 = mean(x(:,2049:end),2);
f = [col1 col2 col3];
inputs = f';
% data photos
xx = double(te_data);
col11 = mean(xx(:,1:1024),2);
col22 = mean(xx(:,1025:2048),2);
col33 = mean(xx(:,2049:end),2);
ff = [col11 col22 col33];
data_inputs = ff';

%% training network

net = patternnet(10);
net = train(net,inputs,trained_labels);
% view(net)

tested_labels = net(data_inputs);
perf = perform(net,actual_labels,tested_labels);   % The neural network / the actual / the predicted in binaries format
predicted_label = vec2ind(tested_labels) - 1;

%% confusion chart
actual_label_dec = double(te_labels');
confusionchart(actual_label_dec,predicted_label)

%% evaluate performance
performance = cifar_10_evaluate(actual_label_dec,predicted_label);


