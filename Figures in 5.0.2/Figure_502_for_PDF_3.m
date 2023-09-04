% p=d=1
x_values = 1:12;

y_values_a = zeros(1, length(x_values));
y_values_b = zeros(1, length(x_values));

d = 1;
p = 1;

for i = 1:length(x_values)
    j = x_values(i);
    a = PDF_3(j, d, p-1) / PDF_3(j-1, d, p);
    b = PDF_3(j, d-1, p) / PDF_3(j-1, d, p);
    y_values_a(i) = a;
    y_values_b(i) = b;
end

figure;
plot(x_values, y_values_a, 'b-', 'LineWidth', 2); 
hold on;
plot(x_values, y_values_b, 'r-', 'LineWidth', 2); 
hold off;
title('Number of challenges: 1','FontSize', 15);
grid on;










% p=d=12
x_values = 1:12;

y_values_a = zeros(1, length(x_values));
y_values_b = zeros(1, length(x_values));

d = 6;
p = 6;

for i = 1:length(x_values)
    j = x_values(i);
    a = PDF_3(j, d, p-1) / PDF_3(j-1, d, p);
    b = PDF_3(j, d-1, p) / PDF_3(j-1, d, p);
    y_values_a(i) = a;
    y_values_b(i) = b;
end

figure;
plot(x_values, y_values_a, 'b-', 'LineWidth', 2); 
hold on;
plot(x_values, y_values_b, 'r-', 'LineWidth', 2); 
hold off;
title('Number of challenges: 6','FontSize', 15);
grid on;









% p=d=12
x_values = 1:12;

y_values_a = zeros(1, length(x_values));
y_values_b = zeros(1, length(x_values));

d = 12;
p = 12;

for i = 1:length(x_values)
    j = x_values(i);
    a = PDF_3(j, d, p-1) / PDF_3(j-1, d, p);
    b = PDF_3(j, d-1, p) / PDF_3(j-1, d, p);
    y_values_a(i) = a;
    y_values_b(i) = b;
end

figure;
plot(x_values, y_values_a, 'b-', 'LineWidth', 2); 
hold on;
plot(x_values, y_values_b, 'r-', 'LineWidth', 2); 
hold off;
title('Number of challenges: 12','FontSize', 15);
grid on;