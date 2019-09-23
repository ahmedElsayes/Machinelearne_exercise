
function f = cifar_10_features(x)
col1 = mean(x(:,1:1024),2);
col2 = mean(x(:,1025:2048),2);
col3 = mean(x(:,2049:end),2);
f = [col1 col2 col3];
end