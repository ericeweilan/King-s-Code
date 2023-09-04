
x_values = 1:1:8;

y_values = zeros(length(x_values), 4);

j = 1;

% Loop through d values from 0 to 8
for d = 0:1:8
  
    % Loop through each element in x_values
    for i = 1:length(x_values)
        
        % Assign the i-th element of x_values to p
        p = x_values(i);
        
        % Calculate the value for the corresponding y_values entry using the function V
        y_values(i, d+1) = V(j, d, p);
    end
end

% Create a new figure
figure;

% Plot y_values against x_values
plot(x_values, y_values);

% Label the x-axis
xlabel('Prosecution Challenge Number','FontSize', 15);

% Label the y-axis
ylabel('Expected Probability Of Conviction','FontSize', 15);

% Add a legend to the plot
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6','d = 7','d = 8');