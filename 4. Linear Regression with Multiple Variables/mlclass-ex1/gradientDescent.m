function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % defining the derivate of theta 0 portion
    derivate0 = (1 / m) * sum((X * theta) - y);

    % defining the value of theta 0
    theta0 = theta(1, 1) - (alpha * derivate0);

    % defining the derivate of theta 1 portion
    derivate1 = (1 / m) * sum(((X * theta) - y) .* X(:, 2));

    % defining the value of theta 1
    theta1 = theta(2, 1) - (alpha * derivate1);
    
    % as theta should be updated, we use the same definition as described on ex1.m.
    theta = [theta0; theta1];

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end