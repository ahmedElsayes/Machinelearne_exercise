% x = [1 2 6 8];
% y = [1 2 5 8];
% cifar_10_evaluate(x,y)
%%
% cifar_10_evaluate(te_labels,labels)
function eval = cifar_10_evaluate(pred,gd)
    if length(pred) == length(gd)
        diff = pred-gd;
        diff_num = nnz(diff);
        eval = 1 - diff_num/length(pred);
    else
        disp('arry length is not the same');
    end

end