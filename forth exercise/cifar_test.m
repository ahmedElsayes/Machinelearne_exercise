
function predicted_label = cifar_test(x,net)

% data photos

xx = double(x);
col11 = mean(xx(:,1:1024),2);
col22 = mean(xx(:,1025:2048),2);
col33 = mean(xx(:,2049:end),2);
ff = [col11 col22 col33];
data_inputs = ff';

tested_labels = net(data_inputs);
% ind_data = double(te_labels') + 1;
% actual_labels = full(ind2vec(ind_data,10));
% perf = perform(net,actual_labels,tested_labels);   % The neural network / the actual / the predicted in binaries format
predicted_label = vec2ind(tested_labels) - 1;

end