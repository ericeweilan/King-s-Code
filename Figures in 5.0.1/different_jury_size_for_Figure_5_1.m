% J=2

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);


j = 2;


for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = V(j, d, p);
    end
end


figure;
plot(x_values, y_values);
title('Jury Size=2', 'FontSize', 15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');
%% 
% 
% 
% J=3

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);


j = 3;


for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = V(j, d, p);
    end
end


figure;
plot(x_values, y_values);
title('Jury Size=3', 'FontSize', 15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');
%% 
% J=4

x_values = 1:1:6;

y_values = zeros(length(x_values), 4);


j = 4;


for d = 0:1:6
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = V(j, d, p);
    end
end


figure;
plot(x_values, y_values);
title('Jury Size=4', 'FontSize', 15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6');