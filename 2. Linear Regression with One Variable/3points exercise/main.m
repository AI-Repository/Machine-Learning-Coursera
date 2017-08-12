data = load('points.txt'); % read comma separated data
X = data(:, 1); y = data(:, 2);
m = length(y);

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = [0;0]; % initialize fitting parameters
iterations = 15000;
alpha = 0.01;

% calcular j para dado theta
j= calculateJ(X, y, theta);

%actualizar theta
theta= updateTheta(X, y, theta, alpha, m);

for i=1: iterations
	j = calculateJ(X, y, theta);
	theta = updateTheta(X, y, theta, alpha, m);
end