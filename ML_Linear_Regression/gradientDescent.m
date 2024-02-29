function theta = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples

for iter = 1:num_iters
    
    gradient = 2 * X' * ((X * theta) - y);
    fprintf('gradients are: [%.4f, %.4f]\n', gradient);

    theta = theta - (alpha) * gradient;
    fprintf('next values are: [%.4f, %.4f]\n\n', theta);
    
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %






    % ============================================================

end

end
