function out = neighbor(v) 

    l = length(v); 
    out = zeros((l-1), 1); 
    for i = 1:(l-1) 
        out(i) = abs(v(i) - v(i+1)); 
        fprintf('%d ', out(i)); 
    end 
end 
