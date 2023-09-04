function result = PDF_4(j, d, p)
persistent memo; 

    if isempty(memo)
        memo = containers.Map(); 
    end

    
    key = sprintf('%d,%d,%d', j, d, p);
    
    
    if memo.isKey(key)
        result = memo(key); 
    else

u = 0.5;

    if j == 0
        result = 1;
    elseif j ~= 0 && d == 0 && p == 0
       
        result = u^j;
    elseif d == 0 && j ~= 0 && p ~= 0
        a = PDF_4(j, 0, p-1) / PDF_4(j-1, 0, p);
        
        result = PDF_4(j-1, 0, p) * (1- (0.5+0.5*a^4-a^3));

    elseif p == 0 && j ~= 0 && d ~= 0
        b = PDF_4(j, d-1, 0) / PDF_4(j-1, d, 0) ;
        result = PDF_4(j, d-1, 0) - PDF_4(j-1, d, 0) * (-0.5*b^4+b^3);
    else
        a = PDF_4(j, d, p-1) / PDF_4(j-1, d, p);
        b = PDF_4(j, d-1, p) / PDF_4(j-1, d, p);
       
        result = PDF_4(j, d-1, p) - PDF_4(j-1, d, p) * (-0.5*(b^4-a^4)+b^3-a^3);
    end
    
        memo(key) = result;
    end
end