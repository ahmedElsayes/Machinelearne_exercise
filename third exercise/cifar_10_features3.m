
function f = cifar_10_features3(x,n)
% count = 1024/(n*n);
% count = 16;
f = zeros(length(x(:,1)),(n*3));
for i=1:length(x(:,1))
    % Turning the photos's rows of (R&G&B) to columns
    x1 = x(i,1:1024)';
    x2 = x(i,1025:2048)';
    x3 = x(i,2049:end)';
    % shaping the single column of each division to multiple columns
    % taking the mean of each column and arrange them in one row vector
    x11 = mean(reshape(x1,[],n));
    x22 = mean(reshape(x2,[],n));
    x33 = mean(reshape(x3,[],n));
    f(i,:) = [x11 x22 x33];
end
% ff = mean(x4);
end