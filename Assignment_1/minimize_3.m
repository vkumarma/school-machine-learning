function minimize_3(theta_0, theta_1, theta_2)
    for i = 1:100

        fprintf("theta0 is %.2f\n", theta_0);
        gradient_0 = (6 * theta_0) + (2 * theta_2) + theta_1 - 2;

        fprintf("theta1 is %.2f\n", theta_1);
        gradient_1 = (0.5 * theta_1) + theta_0;

        fprintf("theta1 is %.2f\n", theta_2);
        gradient_2 = (2 * theta_2) + (2 * theta_0);

        theta_0 = theta_0 - (0.2) * gradient_0;
        fprintf("new value for theta_0 is %.2f\n", theta_0);

        theta_1 = theta_1 - (0.2) * gradient_1;
        fprintf("new value for theta_1 is %.2f\n", theta_1);

        theta_2 = theta_2 - (0.2) * gradient_2;
        fprintf("new value for theta_2 is %.2f\n\n", theta_2);

    end
end

% point [0.98, -1.93, -0.98] minimizes function J