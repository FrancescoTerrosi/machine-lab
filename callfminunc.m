function callfminunc(X, y, initial_theta)
    
    % Call costFunction before this one!!

    options = optimoptions(@fminunc,'Algorithm','Quasi-Newton','GradObj', 'on', 'MaxIter', 400);

    %  Run fminunc to obtain the optimal theta
    %  This function will return theta and the cost 
    [theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

    % Print theta
    fprintf('Cost at theta found by fminunc: %f\n', cost);
    disp('theta:');disp(theta);
end

