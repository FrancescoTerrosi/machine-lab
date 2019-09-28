function computeTheta(filename, features, theta, alpha, epochs)
    X = readtable(filename);
    x = table2array(X(:, features));
    x = [ones(length(x),1) x];
    y = table2array(X(:, size(X,2)));
    [theta, error] = gradientDescent(x, y, theta, alpha, epochs);
    theta
    predictions = x*theta;
    figure;
    plot(x(:, 2), y, 'bo', 'MarkerSize', 10);
    hold on;
    plot(x(:,2), predictions, 'r', 'MarkerSize', 10);