function theta = updateTheta(X, y, theta, alpha, m)

	% derivada0 de theta 0
    derivate0 = (1 / m) * sum((X * theta) - y);

    % valor de theta 0
    theta0 = theta(1, 1) - (alpha * derivate0);

    % derivada1 de theta 1 
    % X so queremos 2 coluna
    derivate1 = (1 / m) * sum(((X * theta) - y) .* X(:, 2));

    % valor de theta 1
    theta1 = theta(2, 1) - (alpha * derivate1);
    
    % as theta should be updated, we use the same definition as described on ex1.m.
    theta = [theta0; theta1];
	
end