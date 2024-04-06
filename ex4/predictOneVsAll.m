function p = predictOneVsAll(all_theta, X)
%PREDICTONEVSALL Predicts the label for a trained one-vs-all classifier. 
%  The labels are in the range 1..K, where K = size(all_theta, 2). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th column is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (values in
%               the range from 1 to num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your values 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
%       



% calculate probabilities
probabilities = sigmoid(X * all_theta);

% calculate predictions based on probabilities
[v, p] = max(probabilities, [], 2);



% =========================================================================


end
