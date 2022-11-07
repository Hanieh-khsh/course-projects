function children = crossover(parents)
    % ____________Defining the fuction of crossover stage________________
    children = zeros(2,8);
    p = randi([2, 7]);
    children(1,1:p) = parents(1,1:p);
    children(2,1:p) = parents(2,1:p);
    idh = p+1;
    for i = p+1:8
        if ismember(parents(2,i),children(1,1:p))==0
            children(1,idh) = parents(2,i);
            idh = idh + 1;
        end
    end
    for i = 1:p
        if ismember(children(2,i),children(1,1:p))==0
            children(1,idh) = children(2,i);
            idh = idh + 1;
        end
    end
    
    idh = p+1;
    for i = p+1:8
        if ismember(parents(1,i),children(2,1:p))==0
            children(2,idh) = parents(1,i);
            idh = idh + 1;
        end
    end
    for i = 1:p
        if ismember(children(1,i),children(2,1:p))==0
            children(2,idh) = children(1,i);
            idh = idh + 1;
        end
    end
    
end