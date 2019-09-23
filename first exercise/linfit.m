% clc; clear all; close all; 
% x = [1 2 3 4 5 6 7 8 9];
% y = [1 2 3.8 3.3 6 5.7 7.2 7.8 8.6];
% linfit(x,y);

function [a,b] = linfit(xx,yy)
G = sum(xx); F = sum(yy); H = sum(xx.^2); K = sum(xx.*yy); N = length(xx);

a = ((G.*K)-(F.*H))/((G.^2) - (H.*N));
b = ((F.*G)-(K.*N))/((G.^2) - (H.*N));
plot(xx,yy,'k*')
hold on
plot(xx,a+b.*xx,':ro')
end

