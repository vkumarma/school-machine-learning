function theta = gradient_descent(X,y, theta)
    for i=1:1000
       fprintf('initial thetas are [%.4f, %.4f]\n', theta');

       gradient = X' * (sigmoid(X * theta) - y);
       fprintf ('gradients are [%.4f, %.4f]\n', gradient');
       
       theta = theta - (0.05) * gradient;
       fprintf ('next thetas are [%.4f, %.4f]\n\n', theta');

    end
end


function g = sigmoid(z)
    g = 1 ./ (1 + exp(-z));
end


% thetas are [-5.2739, 1.1233]