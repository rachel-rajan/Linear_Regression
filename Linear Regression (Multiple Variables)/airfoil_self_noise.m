% airfoil_self-noise dataset

%run_linear_regression_model.m
clear all;
close all;
clc;
dataset = load('airfoil_self_noise.txt');

%Feature vector
x = dataset(:,1:end-1);

%desired value
y = dataset(:,end);

%Normalize features
x_norm = normalize(x);

%% 
% Adding column of ones to x matrix
x_norm = [ones(length(x_norm), 1) x_norm];

theta = zeros(size(x_norm,2), 1);
alpha = 0.01;
num_of_iter = 1000;

% Running gradient descent operation for a linear regression problem for 1000 iterations
[theta, J] = gradient_descent_lr_multi_variable(x_norm, y, theta, alpha, num_of_iter);

%Plotting the cost function
figure;
plot(1:num_of_iter, J);
xlabel('Number of iterations')
ylabel('Cost Value')
%%