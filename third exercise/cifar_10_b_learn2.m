function [mu,covariance,p]=cifar_10_b_learn2(F,la)

mu = zeros(10,3);
covariance = zeros(10,9);
p = 0.1*ones(10,1);
% temp = zeros(5000,1);

for i = 0:9
%     count = 0;
    gg = (la == i);
    training5000 = F(gg,:);
    mu(i+1,:) = mean(training5000);
    covar = cov(training5000);
%     sigma(i+1,:) = std(training5000);
    covariance(i+1,:) = reshape(covar,1,[]);
end