% v3 = double(te_data([2900 3000 5 5000 8000 7200 6100 100 1005 110],:));
% y3 = double(tr_data(15000:15500,:));
% z3 = double(tr_labels(15000:15500));
% test_label = cifar_10_1N(v3,y3,z3)
function test_labels = cifar_10_1NN(v,y,z) %v test_data & y training_data & z training_label
test_labels = zeros(length(v(:,1)),1); % just preallocation to save time of running
deviation = zeros(size(z)); % just preallocation to save time of running
    for i = 1:length(v(:,1))
        for j = 1:length(y(:,1))
            vv = v(i,:);
            yy = y(j,:);
            sq = (vv-yy).^2;
            deviation(j) = sqrt(sum(sq)/length(vv));
        end
        [~,indx2] = min(deviation);
        test_labels(i) = z(indx2);
    end
end