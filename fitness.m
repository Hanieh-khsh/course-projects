function out = fitness(chromohsome)
    % ______________Defining the fintness protocol based on the obtacles. Firstly, we change the inputs to the domain of 8_________________
    

    domain = zeros(8,8);
    for i = 1:8
        domain(chromohsome(i),i) = 1;
    end
    
    % _______________Secondly, we target the number of other queens presenting at the chess board___________________
    temp = zeros(8,8);
    for i = 1:8
        temp(i,:) = domain(:,8+1-i);
    end
    out = 0;
    for i = -7:7
        res1 = sum(diag(domain,i));
        res2 = sum(diag(temp,i));
        if res1 > 1
            out = out + res1;
        end
        if res2 > 1
            out = out + res2;
        end
    end
    
end