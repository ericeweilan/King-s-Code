%PDF_6 for J=1

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);

j = 1;

for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = PDF_6(j, d, p);
    end
end

figure;
plot(x_values, y_values);
title('J=1','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');
%% 







%PDF_6 for J=2

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);

j = 2;

for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = PDF_6(j, d, p);
    end
end

figure;
plot(x_values, y_values);
title('J=2','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');
%% 






%PDF_6 for J=3

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);

j = 3;

for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = PDF_6(j, d, p);
    end
end

figure;
plot(x_values, y_values);
title('J=3','FontSize',15);
xlabel('Prosecution Challenge Number','FontSize',15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');