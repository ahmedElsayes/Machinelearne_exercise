function cc = cifar_10_b_classify3(x,muu,covir,p,n)
% where 'x' is the vector of points to clasify. 'muu' is the average or mean
% value for the distriputed points.'covir' is the coveriance matrix
% that defines the geometry and dimentions of the distributed propability.
% 'n' defines the number of divitions on the image
% x4 = zeros(length(x(:,1)),(count*3));
x1 = mean(reshape(x(1:1024),[],n));
x2 = mean(reshape(x(1025:2048),[],n));
x3 = mean(reshape(x(2049:end),[],n));
x4 = [x1 x2 x3];
Pf = zeros(10,1);
for ii = 1:10
    Pf(ii) = p(ii) * mvnpdf(x4,muu(ii,:),reshape(covir(ii,:),[(3*n) (3*n)]));
end
total_pf = Pf./sum(Pf);
[~,ind] = max(total_pf);
cc = ind-1;
end

