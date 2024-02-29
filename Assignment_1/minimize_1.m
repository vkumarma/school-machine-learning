function minimize_1(theta_0, theta_1)
    for i = 1:10

        fprintf("theta0 is %.2f\n", theta_0);
        gradient_0 = 2 * theta_0;

        fprintf("theta1 is %.2f\n", theta_1);
        gradient_1 = 2 * theta_1;

        theta_0 = theta_0 - (0.25) * gradient_0;
        fprintf("new value for theta_0 is %.2f\n", theta_0);

        theta_1 = theta_1 - (0.25) * gradient_1;
        fprintf("new value for theta_1 is %.2f\n\n", theta_1);

    end
end

% point [0.00, 0.00] minimizes function J