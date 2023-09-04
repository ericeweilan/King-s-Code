% Calculate ration when p=0.75d

% Define the range of values for d and p
d_values = [4, 8, 16, 28, 40, 48, 56];
p_values = 0.75 * d_values;  % p is 75% of d

% Initialize arrays to store results
num_values = length(d_values);
V_values = zeros(1, num_values);
V_values_PDF_4 = zeros(1, num_values);

% Loop to calculate V and PDF_4 values
for i = 1:num_values
    d = d_values(i);
    p = p_values(i);
    
    % Calculate and round V and PDF_4 values, normalized by their respective values at j=12
    V_values(i) = round(V(6, d, p)/V(12, d, p), 7);
    V_values_PDF_4(i) = round(PDF_4(6, d, p)/PDF_4(12, d, p), 7);
end

% Create cell arrays for 'U' and 'P' labels
U_column = repmat({'U'}, num_values, 1);
P_column = repmat({'P'}, num_values, 1);

% Create a table to display results
T = table(d_values', p_values', U_column, V_values', P_column, V_values_PDF_4', ...
    'VariableNames', {'d', 'p', 'U', 'V(12,d,p)', 'P', 'V_values_PDF_4'});

% Display the table
disp(T);







% Calculate ration when p=0.5d


d_values = [4, 8, 16, 28, 40, 48, 56];
p_values = 0.5* d_values;

num_values = length(d_values);

V_values = zeros(1, num_values);
V_values_PDF_4 = zeros(1, num_values);


for i = 1:num_values
    d = d_values(i);
    p = p_values(i);
    
   
    V_values(i) = round(V(6, d, p)/V(12, d, p),7);
    V_values_PDF_4(i) = round(PDF_4(6, d, p)/PDF_4(12, d, p),7);
    
end

U_column = repmat({'U'}, num_values, 1);
P_column = repmat({'P'}, num_values, 1);


T = table(d_values', p_values', U_column, V_values', P_column, V_values_PDF_4', ...
    'VariableNames', {'d', 'p', 'U', 'V(12,d,p)', 'P', 'V_values_PDF_4'});

disp(T);








% Calculate ration when p=0.25d

d_values = [4, 8, 16, 28, 40, 48, 56];
p_values = 0.25* d_values;

num_values = length(d_values);

V_values = zeros(1, num_values);
V_values_PDF_4 = zeros(1, num_values);


for i = 1:num_values
    d = d_values(i);
    p = p_values(i);
    
  
    V_values(i) = round(V(6, d, p)/V(12, d, p),7);
    V_values_PDF_4(i) = round(PDF_4(6, d, p)/PDF_4(12, d, p),7);
    
end

U_column = repmat({'U'}, num_values, 1);
P_column = repmat({'P'}, num_values, 1);

T = table(d_values', p_values', U_column, V_values', P_column, V_values_PDF_4', ...
    'VariableNames', {'d', 'p', 'U', 'V(12,d,p)', 'P', 'V_values_PDF_4'});

disp(T);
