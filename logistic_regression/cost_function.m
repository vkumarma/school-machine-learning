function J = costfunction(X,y, theta)
    J = sum(-y .* log(sigmoid(X*theta)) - (1-y) .* log(1-sigmoid(X*theta)));
end


function g = sigmoid(z)
    g = 1 ./ (1 + exp(-z));
end

% cost = 25.9767
