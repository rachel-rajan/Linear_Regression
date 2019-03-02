%%run_gradient_descent_lr_one_variable
%%
close all; 
clc;

theta_0 = 0.5;
theta_1 = 1;
theta = [theta_0; theta_1];
x=[0.4,0.56, 0.6, 0.8, 1];
x = x';
% Adding column of ones to x matrix
x = [ones(length(x), 1) x];
y=[11, 14, 15, 22, 26];
y = y';
alpha = 0.4;
num_of_iter = 1000;

% Running gradient descent operation for a linear regression problem for 1000 iterations
[theta, J] = gradient_descent_lr_one_variable(x, y, theta, alpha, num_of_iter);

%Plotting the cost function
figure;
plot(1:num_of_iter, J);
xlabel('Number of iterations')
ylabel('Cost Value')
%%