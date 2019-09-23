function [mu,sigma,p]=cifar_10_bayes_learn(F,la)

mu = zeros(10,3);
sigma = zeros(10,3);
p = 0.1*ones(10,1);
% temp = zeros(5000,1);

for i = 0:9
%     count = 0;
    gg = (la == i);
    training5000 = F(gg,:);
    mu(i+1,:) = mean(training5000);
%     sigma(i+1,:) = std(training5000);
    sigma(i+1,:) = std(training5000);
end