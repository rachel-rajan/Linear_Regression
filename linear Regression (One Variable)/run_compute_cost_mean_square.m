%% run_compute_cost_mean_square
close all; 
clc;

theta_0 = 0.5;
theta_1 = 1;
theta = [theta_0; theta_1];
x = [10, 14, 15, 20, 25];
x = x';
% Adding column of ones to x matrix
x = [ones(length(x), 1) x];
y = [11, 14, 15, 22, 26];
y = y';
% Output
J = compute_cost_mean_square(x, y, theta);

%%
