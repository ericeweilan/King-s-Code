% For Uniform distribution

% Define the range of values for d and p
d_values = [4, 8, 16, 28, 40, 48, 56];
p_values = 0.75 * d_values;  % p is 75% of d

% Initialize arrays to store results
num_values = length(d_values);
a_12_values = zeros(1, num_values);
a_1_values = zeros(1, num_values);
b_12_values = zeros(1, num_values);
b_1_values = zeros(1, num_values);
V_values = zeros(1, num_values);

% Loop to calculate a_12, a_1, and V values
for i = 1:num_values
    d = d_values(i);
    p = p_values(i);
    
    % Calculate a_12 and a_1 values
    a_12 = V(12, d, p-1) / V(11, d, p);
    a_1 = V(1, d, p-1) / V(0, d, p);
    
    % Calculate b_12 and b_1 values
    b_12 = V(12, d-1, p) / V(11, d, p);
    b_1  = V(1, d-1, p)  / V(0, d, p);
    
    % Round to 3 decimal places
    a_12_values(i) = round(a_12, 3);
    a_1_values(i) = round(a_1, 3);
    b_12_values(i) = round(b_12, 3);
    b_1_values(i) = round(b_1, 3);
    
    % Calculate and round V values
    V_values(i) = round(V(12, d, p), 7);
end

% Create a table to display results
T = table(d_values', p_values', a_12_values', a_1_values', b_12_values', b_1_values', V_values', ...
    'VariableNames', {'d', 'p', 'a_12', 'a_1','b_12', 'b_1', 'V(12,d,p)'});

% Display the table
disp(T);



















% For Parabola distribution


d_values = [4, 8, 16, 28, 40, 48, 56];
p_values = 0.75 * d_values;


num_values = length(d_values);
a_12_values = zeros(1, num_values);
a_1_values = zeros(1, num_values);

b_12_values = zeros(1, num_values);
b_1_values = zeros(1, num_values);

V_values = zeros(1, num_values);


for i = 1:num_values
    d = d_values(i);
    p = p_values(i);
    
    a_12 = PDF_4(12, d, p-1) / PDF_4(11, d, p);
    a_1 = PDF_4(1, d, p-1) / PDF_4(0, d, p);
    
    b_12 = PDF_4(12, d-1, p) / PDF_4(11, d, p);
    b_1 = PDF_4(1, d-1, p) / PDF_4(0, d, p);
    
    
    a_12_values(i) = round(a_12, 3);
    a_1_values(i) = round(a_1, 3);
    b_12_values(i) = round(b_12, 3);
    b_1_values(i) = round(b_1, 3);
    
    V_values(i) = round(PDF_4(12, d, p),7);
end

T = table(d_values', p_values', a_12_values', a_1_values', b_12_values', b_1_values', V_values', ...
    'VariableNames', {'d', 'p', 'a_12', 'a_1', 'b_12', 'b_1', 'V(12,d,p)'});

disp(T);