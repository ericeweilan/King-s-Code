% Initialize data arrays
a_12_U = [0.185 , 0.342, 0.36, 0.388, 0.398];
b_12_U = [0.926, 0.815, 0.797, 0.767, 0.754];
a_12_P = [0.24, 0.37, 0.384, 0.405, 0.413];
b_12_P = [0.842, 0.722, 0.705, 0.68, 0.669];

% Define colors
colors = ['r', 'b'];

% Create a new figure
figure;

% Loop to plot data points
for i = 1:length(a_12_U)
    % Plot data for A group
    scatter(a_12_U(i), i, 60, 'r', 'o', 'filled'); 
    hold on;
    
    % Plot data for B group
    scatter(b_12_U(i), i, 60, 'r', '^', 'filled'); 
    hold on;
    
    % Plot data for C group
    scatter(a_12_P(i), i, 60, 'b', 'o', 'filled'); 
    hold on;
    
    % Plot data for D group
    scatter(b_12_P(i), i, 60, 'b', '^', 'filled'); 
end

% Set y-axis range and labels
ylim([0, length(a_12_U)+1]);
yticks(1:length(a_12_U));
yticklabels({'1', '5', '6', '8', '9'});

% Set x-axis range
xlim([0, 1]);
xticks(0:0.1:1);

% Add legend, title, and axis labels
ylabel('d=p');
grid on; % Show grid lines