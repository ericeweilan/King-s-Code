function result = PDF_3(j, d, p)
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
        a = PDF_3(j, 0, p-1) / PDF_3(j-1, 0, p);
        
        result = PDF_3(j-1, 0, p) * (1- ( 1/2 - (a^4 - 2*a^3 + (3/2)*a^2)));

    elseif p == 0 && j ~= 0 && d ~= 0
        b = PDF_3(j, d-1, 0) / PDF_3(j-1, d, 0) ;
        result = PDF_3(j, d-1, 0) - PDF_3(j-1, d, 0) *(b^4-2*b^3+(3/2)*b^2);
    else
        a = PDF_3(j, d, p-1) / PDF_3(j-1, d, p);
        b = PDF_3(j, d-1, p) / PDF_3(j-1, d, p);
       
        result = PDF_3(j, d-1, p) - PDF_3(j-1, d, p) * (b^4-a^4-2*(b^3-a^3)+3/2*(b^2-a^2));
    end
    
        memo(key) = result;
    end
end