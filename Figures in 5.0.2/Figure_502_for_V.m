% Initialize x_values and y_values arrays
x_values = 1:12;
y_values_a = zeros(1, length(x_values));
y_values_b = zeros(1, length(x_values));

% Set initial values for d and p
d = 1;
p = 1;

% Loop to calculate y_values based on x_values
for i = 1:length(x_values)
    j = x_values(i);
    a = V(j, d, p-1) / V(j-1, d, p);
    b = V(j, d-1, p) / V(j-1, d, p);
    y_values_a(i) = a;
    y_values_b(i) = b;
end

% Plotting
figure;
plot(x_values, y_values_a, 'b-', 'LineWidth', 2); 
hold on;
plot(x_values, y_values_b, 'r-', 'LineWidth', 2); 
hold off;

% Labels and grid
xlabel('Jury Seat number','FontSize', 15);
ylabel('Threshold Value','FontSize', 15);
grid on;

% Text annotations on the plot
text(3,0.9,'D Challenge','FontSize', 15)
text(3,0.15,'P Challenge','FontSize', 15)
text(6,0.5,'Accept by both parties','FontSize', 15)
