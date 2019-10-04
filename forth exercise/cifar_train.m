
function net = cifar_train(traindata,trainlabel)

% convert the indices of train labels to vectors

ind_train = double(trainlabel') + 1;
trained_labels = full(ind2vec(ind_train,10));

% The pattern recognition commands to clasifiy categories
% to extract the features of the training photos & data photos
% training photos
x = double(traindata);
col1 = mean(x(:,1:1024),2);
col2 = mean(x(:,1025:2048),2);
col3 = mean(x(:,2049:end),2);
f = [col1 col2 col3];
inputs = f';

% training network

net = patternnet(10);
net = train(net,inputs,trained_labels);

end