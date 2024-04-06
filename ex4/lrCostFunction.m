function [J, grad] = lrCostFunction(theta, X, y)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression
%   J = LRCOSTFUNCTION(theta, X, y) computes the cost of using
%   theta as the parameter for logistic regression and the
%   gradient of the cost w.r.t. the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%


J = sum(-y .* log(sigmoid(X*theta)) - (1-y) .* log(1-sigmoid(X*theta)));
grad = X' * (sigmoid(X * theta) - y);







% =============================================================


end
