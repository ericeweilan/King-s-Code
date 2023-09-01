function result = PDF_2(j, d, p)
persistent memo; 

    if isempty(memo)
        memo = containers.Map(); 
    end

    
    key = sprintf('%d,%d,%d', j, d, p);
    
    
    if memo.isKey(key)
        result = memo(key); 
    else

u = 1/3;

    if j == 0
        result = 1;
    elseif j ~= 0 && d == 0 && p == 0
       
        result = u^j;
    elseif d == 0 && j ~= 0 && p ~= 0
        a = PDF_2(j, 0, p-1) / PDF_2(j-1, 0, p);
        
        result = PDF_2(j-1, 0, p) * (1- (2/3+1/3*a^3-a^2));

    elseif p == 0 && j ~= 0 && d ~= 0
        b = PDF_2(j, d-1, 0) / PDF_2(j-1, d, 0) ;
        result = PDF_2(j, d-1, 0) - PDF_2(j-1, d, 0) * ((-1/3)*b^3+b^2);
    else
        a = PDF_2(j, d, p-1) / PDF_2(j-1, d, p);
        b = PDF_2(j, d-1, p) / PDF_2(j-1, d, p);
       
        result = PDF_2(j, d-1, p) - PDF_2(j-1, d, p) * ((-1/3)*(b^3-a^3)+(b^2-a^2));
    end
    
        memo(key) = result;
    end
end