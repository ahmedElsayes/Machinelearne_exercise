% to test the outcome of function2 inside function1
xx = cifar_10_rand(data(1,:));
evaluation = cifar_10_evaluate(xx,double(labels)) %double function to convert from unit8 to double class
