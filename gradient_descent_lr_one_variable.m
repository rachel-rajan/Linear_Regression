function [ theta, J ] = gradient_descent_lr_one_variable( x, y, theta, alpha, num_of_iter )
%Function that performs the gradient descent operation for 
%a linear regression problem for ‘n’ iterations.
%% Inputs
% theta :includes both theta_0 and theta_1 [Array vector theta(1) = theta_0  and theta(2) = theta_1]
% x: (feature vector)
% y: (actual value)
% alpha : learning rate
% num_of_iter : Number of iterations
%%Outpus
%J : cost at every iteration [Array variable]
%theta : updated weights

%%
% computing the length of our actual vlue
m = length(y);

% Creating a zero matrix to store cost value
J = zeros(num_of_iter, 1);

%Normalize features
x_norm = normalize(x);

% Gradient descent
for i = 1:num_of_iter       
% Calculating the transpose of hypothesis
h = (x_norm * theta - y)';        
% Updating theta
theta(1) = theta(1) - alpha * (1/m) * h * x_norm(:, 1);
theta(2) = theta(2) - alpha * (1/m) * h * x_norm(:, 2);        

% Keeping track of the cost function
J(i) = compute_cost_mean_square(x, y, theta);        

end 
%%