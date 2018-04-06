function J = calculateJ(X, y, theta)
	result=(X*theta-y).^2;
	J=sum(result);
end