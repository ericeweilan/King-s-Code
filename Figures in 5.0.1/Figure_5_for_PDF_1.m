% PDF_1 for J=1


% Initialize x_values and y_values
x_values = 1:1:6;
y_values = zeros(length(x_values), 4);

% Set j to 1
j = 1;

% Loop through d values from 0 to 6
for d = 0:1:6
    % Loop through each element in x_values
    for i = 1:length(x_values)
        % Assign the i-th element of x_values to p
        p = x_values(i);
        
        % Calculate y_values using the function PDF_1
        y_values(i, d+1) = PDF_1(j, d, p);
    end
end

% Create a new figure and plot y_values against x_values
figure;
plot(x_values, y_values);

% Add title and labels
title('J=1','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',12);

% Add legend
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');

%% 








% PDF_1 for J=2

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);


j = 2;


for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = PDF_1(j, d, p);
    end
end


figure;
plot(x_values, y_values);
title('J=2','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',12);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');
%% 



% PDF_1 for J=3

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);


j = 3;


for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = PDF_1(j, d, p);
    end
end


figure;
plot(x_values, y_values);
title('J=3','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',12);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');