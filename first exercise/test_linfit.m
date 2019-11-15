% ahmed.elsayes@tuni.fi
clc; clear all; close all; 
% x = [1 2 3 4 5 6 7 8 9];
% y = [1 2 3.8 3.3 6 5.7 7.2 7.8 8.6];
% inputs = 10;     % enter the number of points that will be linearily regressed
inputs_str = inputdlg('enter your data','inputs',[1 40]);
inputs = str2num(inputs_str{1});

% graphical interface and fitting function implementation
figure; axis([0 10 0 10]); Q = ginput(inputs);
x = Q(:,1);
y = Q(:,2);
linfit(x,y);
