function [ theta, J ] = gradient_descent_lr_multi_variable( x_norm, y, theta, alpha, num_of_iter )
%Function that performs the gradient descent operation for 
%a linear regression problem for ‘n’ iterations.
%% Inputs
% theta :includes both theta_0 and so on
% x_norm: normalized feature vector
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

% Gradient descent
for i = 1:num_of_iter       
   
% Calculating the transpose of hypothesis
delta = (1/m)*(x_norm * theta - y)'*x_norm;  

% Updating theta
theta = theta - (delta*alpha)';
     
% Keeping track of the cost function
J(i) = compute_cost_mean_square_multi(x_norm, y, theta);        

end 
%%