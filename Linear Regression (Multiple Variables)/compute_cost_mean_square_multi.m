function [ J ] = compute_cost_mean_square_multi( x_norm, y, theta )
%Function that computes mean squared error between the actual value of 
%y and estimated value of y based on the hypothesis (h)
%%Inputs 
%theta :  (includes both theta_0 and theta_1) [Array vector theta (1) = theta_0 and theta (2) = theta_1]
% x_norm:normalized feature vector
% y :actual value
%%Outputs
% J :cost

%   Calculates the cost function
J = (x_norm * theta - y)' * (x_norm * theta - y) / (2 * length(y));    

end