function cc = cifar_10_bayes_classify(x,muu,sig,p)
x1 = mean(x(1:1024));
x2 = mean(x(1025:2048));
x3 = mean(x(2049:end));
Pf = zeros(10,1);
for i = 1:10
    Pf(i) = p(i)*normpdf(x1,muu(i,1),sig(i,1))*normpdf(x2,muu(i,2),sig(i,2))*normpdf(x3,muu(i,3),sig(i,3));
end
total_pf = Pf./sum(Pf);
[~,ind] = max(total_pf);
cc = ind-1;
end

