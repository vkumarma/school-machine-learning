function minimize_2(theta_0, theta_1)
    for i = 1:5

        fprintf("theta0 is %.2f\n", theta_0);
        gradient_0 = (6 * theta_0) + (20 * theta_1) - 12;

        fprintf("theta1 is %.2f\n", theta_1);
        gradient_1 = (76 * theta_1) + (20 * theta_0) - 42;

        theta_0 = theta_0 - (0.01) * gradient_0;
        fprintf("new value for theta_0 is %.2f\n", theta_0);

        theta_1 = theta_1 - (0.01) * gradient_1;
        fprintf("new value for theta_1 is %.2f\n\n", theta_1);

    end
end

% point [1.41, 0.18] minimizes function J