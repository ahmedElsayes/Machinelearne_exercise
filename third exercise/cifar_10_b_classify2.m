function cc = cifar_10_b_classify2(x,muu,covir,p)
x1 = mean(x(1:1024));
x2 = mean(x(1025:2048));
x3 = mean(x(2049:end));
x4 = [x1 x2 x3];
Pf = zeros(10,1);
for i = 1:10
%     Pf(i) = p(i)*normpdf(x1,muu(i,1),sig(i,1))*normpdf(x2,muu(i,2),sig(i,2))*normpdf(x3,muu(i,3),sig(i,3));
    Pf(i) = p(i) * mvnpdf(x4,muu(i,:),reshape(covir(i,:),[3 3]));
end
total_pf = Pf./sum(Pf);
[~,ind] = max(total_pf);
cc = ind-1;
end

