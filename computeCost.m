function J = computeCost(X, Y, theta)
    % Compute cost function J
    m = size(X,1);
    predictions = X * theta;
    sqrErrors = (predictions - Y).^2;
    
    J = 1/(2*m) * sum(sqrErrors);
end

