function result = V(j, d, p)
    persistent memo; % Declare as a static variable to retain memoized results

    % Initialize the hash table if it's empty
    if isempty(memo)
        memo = containers.Map(); % Create a hash table
    end

    % Create the key for the hash table
    key = sprintf('%d,%d,%d', j, d, p);
    
    % Check if the result for the current parameters is already computed
    if memo.isKey(key)
        result = memo(key); % Return the result if already computed
    else
        u = 0.5; % mean value

        % Compute result based on conditions
        if j == 0
            result = 1;
        elseif j ~= 0 && d == 0 && p == 0
            result = u^j;
        elseif d == 0 && j ~= 0 && p ~= 0
            a = V(j, 0, p-1) / V(j-1, 0, p);
            result = V(j-1, 0, p) * (1- (1/2*(1-a^2)));
        elseif p == 0 && j ~= 0 && d ~= 0
            b = V(j, d-1, 0) / V(j-1, d, 0);
            result = V(j, d-1, 0) - V(j-1, d, 0) * (1/2*(b^2));
        else
            a = V(j, d, p-1) / V(j-1, d, p);
            b = V(j, d-1, p) / V(j-1, d, p);
            result = V(j, d-1, p) - V(j-1, d, p) * (1/2*(b^2-a^2));
        end

        % Save the current result to the hash table
        memo(key) = result;
    end
end

