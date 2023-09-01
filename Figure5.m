
x_values = 1:1:8;

y_values = zeros(length(x_values), 4);


j = 1;


for d = 0:1:8
  
    for i = 1:length(x_values)
        p = x_values(i);
        
        y_values(i, d+1) = V(j, d, p);
    end
end


figure;
plot(x_values, y_values);
xlabel('Prosecution Challenge Number','FontSize', 15);
ylabel('Expected Probability Of Conviction','FontSize', 15);
legend('d = 0', 'd = 1', 'd = 2', 'd = 3','d = 4','d = 5','d = 6','d = 7','d = 8');
